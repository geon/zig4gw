const std = @import("std");
const console = @import("console.zig");

export fn _start() void {
    @call(std.builtin.CallModifier.always_inline, main, .{});
}

pub fn main() void {
    console.setColors(.White, .Blue);
    console.clear();
    console.putString("Hello, world");
    console.setForegroundColor(.LightRed);
    console.putChar('!');
}
