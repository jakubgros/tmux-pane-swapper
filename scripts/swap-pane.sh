#!/usr/bin/env bash

function is_curr_pane_marked
{
  [ "$(tmux display-message -p '#{pane_marked}')" == "1" ]
}

function is_any_pane_marked
{
  [ "$(tmux display-message -p '#{pane_marked_set}')" == "1" ]
}

function toggle_mark_curr_pane
{
  tmux select-pane -m
}

function unmark_pane
{
  tmux select-pane -M
}

function swap_marked_pane_with_curr_pane
{
  tmux swap-pane
}

if is_any_pane_marked; then
  if is_curr_pane_marked; then
    toggle_mark_curr_pane
  else
    swap_marked_pane_with_curr_pane
    unmark_pane
  fi
else
  toggle_mark_curr_pane
fi
