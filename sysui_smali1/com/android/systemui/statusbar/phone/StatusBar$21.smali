.class Lcom/android/systemui/statusbar/phone/StatusBar$21;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->updateColors()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    .line 5316
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 5319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isMusicViewShow()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 5320
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/auto_color/AutoColorUtil;

    move-result-object v0

    const/4 v1, 0x1

    .line 5321
    invoke-virtual {v0, v1, v1}, Lcom/meizu/keyguard/auto_color/AutoColorUtil;->getCurrentColor(ZI)I

    move-result v0

    .line 5322
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3200(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/keyguard/KeyguardStatusView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardStatusView;->setFilterColor(I)V

    .line 5323
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateColors()V

    .line 5324
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    .line 5325
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v3, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    if-ne v3, v1, :cond_52

    .line 5326
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateColors(I)V

    .line 5327
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v3, -0x1

    if-ne v0, v3, :cond_4d

    const/4 v3, 0x0

    goto :goto_4f

    :cond_4d
    const/high16 v3, 0x3f800000  # 1.0f

    :goto_4f
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 5331
    :cond_52
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_63

    .line 5332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3600(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5334
    :cond_63
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$21;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateClockColor(I)V

    return-void
.end method
