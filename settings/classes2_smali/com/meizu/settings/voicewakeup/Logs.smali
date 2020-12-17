.class public Lcom/meizu/settings/voicewakeup/Logs;
.super Ljava/lang/Object;
.source "Logs.java"


# static fields
.field private static mLogOn:Z

.field private static mLogSwitch:Z

.field private static mLogtime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 10
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogOn:Z

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogSwitch:Z

    const-wide/16 v0, 0x0

    .line 12
    sput-wide v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogtime:J

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 55
    sget-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogOn:Z

    if-eqz v0, :cond_7

    .line 56
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2

    .line 45
    sget-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogOn:Z

    if-eqz v0, :cond_9

    const-string v0, "VoiceAssistant"

    .line 46
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 66
    sget-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogOn:Z

    if-eqz v0, :cond_7

    .line 67
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 50
    sget-boolean v0, Lcom/meizu/settings/voicewakeup/Logs;->mLogOn:Z

    if-eqz v0, :cond_7

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method
