.class Lcom/android/systemui/statusbar/phone/StatusBar$28;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Lcom/meizu/media/music/KeyguardMusicController$IMusicControlChange;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
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

    .line 5950
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMusicVisibleChanged(Z)V
    .registers 7

    if-eqz p1, :cond_5e

    .line 5954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5955
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5956
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->hasLiveWallpaper()Z

    move-result v0

    if-nez v0, :cond_34

    .line 5957
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/wallpaper/LockscreenWallpaperManager;->setBackdropVisible(Ljava/lang/Boolean;)V

    .line 5959
    :cond_34
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v0

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->updateColors(I)V

    .line 5960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/flyme/systemui/facerecognition/FaceRecognitionAnimationView;->setFaceColorFilter(I)V

    .line 5961
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3300(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateColorForMusic(I)V

    .line 5962
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->onDarkChanged(Landroid/graphics/Rect;FI)V

    goto :goto_6e

    .line 5964
    :cond_5e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateColors()V

    .line 5968
    :goto_6e
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$28;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$3500(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->changeCarrierTextToClock(Z)V

    return-void
.end method
