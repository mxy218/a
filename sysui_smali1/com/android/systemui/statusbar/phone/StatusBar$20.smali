.class Lcom/android/systemui/statusbar/phone/StatusBar$20;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardUpdateMonitor$NotificationPreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;->mzMakeStatusBarView()V
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

    .line 5237
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshNotificationState()V
    .registers 5

    .line 5240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    .line 5241
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->faceAllowPrivateNotificationPolicy()I

    move-result v2

    if-eq v2, v1, :cond_26

    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 5242
    invoke-interface {v2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->faceAllowPrivateNotificationPolicy()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 5244
    :cond_26
    :goto_26
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v2, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHideSensitiveForFace(Z)V

    .line 5245
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->setHideSensitiveForFace(Z)V

    .line 5247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Landroid/view/ViewGroup;

    check-cast v1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(Z)V

    .line 5248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3100(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->updateSensitiveness(Z)V

    .line 5249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateFaceState(Z)V

    .line 5250
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar;->mViewHierarchyManager:Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationViewHierarchyManager;->updateNotificationViews()V

    return-void
.end method

.method public resetFaceLockAnim()V
    .registers 1

    .line 5255
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$20;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/facerecognition/FaceRecognitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/flyme/systemui/facerecognition/FaceRecognitionController;->resetFaceImage()V

    return-void
.end method
