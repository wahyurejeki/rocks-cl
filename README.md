# rocks-cl
Overrides for opencl-comptible rocks

The idea is to add this to the luarocks source servers path ahead of the main torch rocks repo, ie something like:

```
rocks_servers = {
   [[https://raw.githubusercontent.com/wahyurejeki/rocks-cl/master]],
   [[https://raw.githubusercontent.com/torch/rocks/master]],
   [[https://raw.githubusercontent.com/rocks-moonscript-org/moonrocks-mirror/master]]
}
```

It will only override where needed, and otherwise fall through to standard torch rocks server.
