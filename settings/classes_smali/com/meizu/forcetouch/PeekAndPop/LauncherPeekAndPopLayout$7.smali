.class Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LauncherPeekAndPopLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;


# direct methods
.method constructor <init>(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)V
    .registers 2

    .line 652
    iput-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    .line 655
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 656
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    invoke-static {p1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$600(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 657
    iget-object p1, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$602(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 658
    iget-object p0, p0, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout$7;->this$0:Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;

    iput-boolean v0, p0, Lcom/meizu/forcetouch/PeekAndPop/AbsPeekAndPopLayout;->mIsAnimation:Z

    .line 659
    invoke-static {p0, v1}, Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;->access$702(Lcom/meizu/forcetouch/PeekAndPop/LauncherPeekAndPopLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method
