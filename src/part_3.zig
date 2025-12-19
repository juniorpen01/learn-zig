const p = std.debug.print;
const std = @import("std");

pub fn part_3() !void {
    {
        var foo = "foo";
        p("{} {c} {c}\n", .{ foo.len, foo[2], foo[1] });

        const c = '🤮';
        p("{}\n", .{@sizeOf(comptime_int)});
        p("{}\n", .{@sizeOf(@TypeOf(c))});

        const s = "hell👽";
        p("s: {s} len: {} 3: {c} 4: {c} 5: {c}\n", .{ s, s.len, s[3], s[4], s[5] });
    }

    const foo = "foo"; // the type annotation changes it?? and apparently removes null terminator???
    p(
        \\foo: {s}
        \\len: {}
        \\type: {}
        \\0: {c}
        \\2: {c}
        \\3: {c}
        \\A: {c}
        \\==?: {}
        \\d: {d}
        \\u: {u}
        \\x: {x}
        \\s: {s}
        \\eql: {}
        \\u: {s}
        \\
    , .{ foo, foo.len, @TypeOf(foo), foo[0], foo[2], foo[3], '\x41', '\x41' == 'A', '🦅', '🦅', '🦅', "\xf0\x9f\xa6\x85", std.mem.eql(u8, "🦅", "\xf0\x9f\xa6\x85"), "\u{1f985}" }); // it seems i still get confused asl
}
