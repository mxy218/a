.class Lcom/android/systemui/statusbar/phone/StatusBar$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusBar.java"


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

    .line 554
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 557
    const-class p2, Landroid/app/WallpaperManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    const-string p2, "StatusBar"

    if-nez p1, :cond_12

    const-string p0, "WallpaperManager not available"

    .line 559
    invoke-static {p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_12
    const/4 v0, -0x2

    .line 562
    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperInfo(I)Landroid/app/WallpaperInfo;

    move-result-object p1

    .line 563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 566
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v0, :cond_45

    if-nez p1, :cond_3b

    if-nez v1, :cond_43

    :cond_3b
    if-eqz p1, :cond_45

    .line 570
    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v0

    if-eqz v0, :cond_45

    :cond_43
    move v0, v2

    goto :goto_46

    :cond_45
    move v0, v3

    .line 572
    :goto_46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarWindowController:Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setWallpaperSupportsAmbientMode(Z)V

    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setWallpaperSupportsAmbientMode(Z)V

    if-eqz p1, :cond_a2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintController;->isFirstBootUnlock()Z

    move-result v0

    if-eqz v0, :cond_96

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "use live wallpaper, no need lockwallpaper "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->shouldSetNoLockWallpaper(Landroid/app/WallpaperInfo;)Z

    move-result p1

    if-eqz p1, :cond_96

    .line 580
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->setLockWallpaperState(I)V

    .line 583
    :cond_96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->liveWallpaperChange()V

    goto :goto_ad

    .line 585
    :cond_a2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$2;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->getInstance(Landroid/content/Context;)Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/meizu/keyguard/livewallpaper/LiveWallpaperController;->setLockWallpaperState(I)V

    :goto_ad
    return-void
.end method
