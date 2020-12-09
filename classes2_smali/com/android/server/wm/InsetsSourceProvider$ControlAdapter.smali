.class Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;
.super Ljava/lang/Object;
.source "InsetsSourceProvider.java"

# interfaces
.implements Lcom/android/server/wm/AnimationAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/InsetsSourceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlAdapter"
.end annotation


# instance fields
.field private mCapturedLeash:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/InsetsSourceProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$1;)V
    .registers 3

    .line 205
    invoke-direct {p0, p1}, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;-><init>(Lcom/android/server/wm/InsetsSourceProvider;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Landroid/view/SurfaceControl;
    .registers 1

    .line 205
    iget-object p0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 250
    return-void
.end method

.method public getBackgroundColor()I
    .registers 2

    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public getDurationHint()J
    .registers 3

    .line 240
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShowWallpaper()Z
    .registers 2

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarTransitionsStartTime()J
    .registers 3

    .line 245
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public onAnimationCancelled(Landroid/view/SurfaceControl;)V
    .registers 4

    .line 229
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1}, Lcom/android/server/wm/InsetsSourceProvider;->access$300(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    move-result-object p1

    if-ne p1, p0, :cond_3a

    .line 230
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1}, Lcom/android/server/wm/InsetsSourceProvider;->access$500(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/InsetsStateController;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$400(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/InsetsStateController;->notifyControlRevoked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/InsetsSourceProvider;)V

    .line 231
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1}, Lcom/android/server/wm/InsetsSourceProvider;->access$600(Lcom/android/server/wm/InsetsSourceProvider;)Landroid/view/InsetsSource;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getType()I

    move-result v0

    invoke-static {v0}, Landroid/view/InsetsState;->getDefaultVisibility(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$700(Lcom/android/server/wm/InsetsSourceProvider;Z)V

    .line 232
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$802(Lcom/android/server/wm/InsetsSourceProvider;Landroid/view/InsetsSourceControl;)Landroid/view/InsetsSourceControl;

    .line 233
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$402(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    .line 234
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1, v0}, Lcom/android/server/wm/InsetsSourceProvider;->access$302(Lcom/android/server/wm/InsetsSourceProvider;Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;)Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;

    .line 236
    :cond_3a
    return-void
.end method

.method public startAnimation(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V
    .registers 5

    .line 222
    iput-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    .line 223
    iget-object p1, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->this$0:Lcom/android/server/wm/InsetsSourceProvider;

    invoke-static {p1}, Lcom/android/server/wm/InsetsSourceProvider;->access$200(Lcom/android/server/wm/InsetsSourceProvider;)Lcom/android/server/wm/WindowState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 224
    iget-object p3, p0, Lcom/android/server/wm/InsetsSourceProvider$ControlAdapter;->mCapturedLeash:Landroid/view/SurfaceControl;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {p2, p3, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 225
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;)V
    .registers 2

    .line 254
    return-void
.end method
