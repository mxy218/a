.class Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;
.super Ljava/lang/Object;
.source "NotificationLockscreenUserManagerImpl.java"

# interfaces
.implements Lcom/meizu/keyguard/theme/MeizuKeyguardThemeManager$IThemeChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChange()V
    .registers 3

    const-string v0, "LockscreenUserManager"

    const-string v1, "onThemeChange"

    .line 198
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl$3;->this$0:Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;->updateLockscreenNotificationSetting()V

    return-void
.end method
