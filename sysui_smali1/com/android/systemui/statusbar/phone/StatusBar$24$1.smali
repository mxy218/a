.class Lcom/android/systemui/statusbar/phone/StatusBar$24$1;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar$24;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar$24;)V
    .registers 2

    .line 5456
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 5459
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24$1;->this$1:Lcom/android/systemui/statusbar/phone/StatusBar$24;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$24;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindow:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f0ccccd  # 0.55f

    const v3, 0x3eae147b  # 0.34f

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 5460
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x2d0

    .line 5461
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 5462
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
