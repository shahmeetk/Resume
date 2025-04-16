#!/bin/bash
curl -s https://api.github.com/repos/shahmeetk/Resume/actions/workflows/deploy.yml/runs | grep -i status
