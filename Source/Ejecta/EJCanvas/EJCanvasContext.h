// The base class each Canvas Context (2D or WebGL) is derived from, so it can
// be hosted by a Canvas.

#import <Foundation/Foundation.h>

@class EAGLContext;
@interface EJCanvasContext : NSObject {
	short width, height;
	
	BOOL preserveDrawingBuffer;
	BOOL msaaEnabled;
	BOOL needsPresenting;
	int msaaSamples;
	EAGLContext *glContext;
}

- (void)create;
- (void)flushBuffers;
- (void)prepare;

@property (nonatomic) BOOL preserveDrawingBuffer;
@property (nonatomic) BOOL msaaEnabled;
@property (nonatomic) int msaaSamples;
@property (nonatomic) short width;
@property (nonatomic) short height;
@property (nonatomic, readonly) EAGLContext *glContext;

@end
