.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;
.super Ljava/lang/Object;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Lcom/meizu/keyguard/wallpaper/IKeyguardWallpaperCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .registers 2

    .line 1036
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardNotOccluded()V
    .registers 1

    return-void
.end method

.method public onMusicViewVisibleChange(Z)V
    .registers 2

    return-void
.end method

.method public onNotificationChange(Z)V
    .registers 2

    return-void
.end method

.method public onShowWallpaperText(Z)V
    .registers 2

    return-void
.end method

.method public onStartPosterAnimation()V
    .registers 1

    .line 1074
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$2100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onStartPosterAnimation()V

    return-void
.end method

.method public onWallpaperFunctionEnable(Z)V
    .registers 2

    return-void
.end method

.method public onWallpaperIconVisibleChange(Z)V
    .registers 2

    return-void
.end method

.method public onWallpaperTextChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
