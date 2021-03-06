#import "YOLO.h"


@implementation NSMutableArray (YOLO)

- (id)pop {
    if (self.count) {
        NSUInteger x = self.count-1;
        id o = self[x];
        [self removeObjectAtIndex:x];
        return o;
    } else {
        return nil;
    }
}

- (NSMutableArray *(^)(id))push {
    return ^(id o){
        if (o) [self addObject:o];
        return self;
    };
}

- (id)shift {
    if (self.count == 0)
        return nil;
    id o = self.firstObject;
    [self removeObjectAtIndex:0];
    return o;
}

- (NSMutableArray *(^)(id o))unshift {
    return ^(id o){
        if (o) [self insertObject:o atIndex:0];
        return self;
    };
}

@end
