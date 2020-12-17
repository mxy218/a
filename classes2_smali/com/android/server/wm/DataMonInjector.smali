.class public Lcom/android/server/wm/DataMonInjector;
.super Ljava/lang/Object;
.source "DataMonInjector.java"


# static fields
.field public static final EVENT_ACTIVITY_FINISH:I = 0x1b

.field public static final EVENT_ACTIVITY_START:I = 0x1a

.field public static final EVENT_COLD_START:I = 0x1c

.field public static final EVENT_LUKEWARM_START:I = 0x1e

.field public static final EVENT_MONKEY:I = 0x29

.field public static final EVENT_PROCESS_FINISH:I = 0x19

.field public static final EVENT_PROCESS_START:I = 0x18

.field public static final EVENT_SCROLL_FINISH:I = 0x21

.field public static final EVENT_SCROLL_START:I = 0x20

.field public static final EVENT_START_TIME:I = 0x1f

.field public static final EVENT_WARM_START:I = 0x1d


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize()V
    .registers 0

    .line 37
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    .line 38
    return-void
.end method

.method public static reportActivity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 11
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "className"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "pid"  # I
    .param p5, "started"  # Z

    .line 52
    if-eqz p5, :cond_5

    .line 53
    const/16 v0, 0x1a

    .local v0, "event":I
    goto :goto_7

    .line 55
    .end local v0  # "event":I
    :cond_5
    const/16 v0, 0x1b

    .line 57
    .restart local v0  # "event":I
    :goto_7
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->scheduleData(ILjava/lang/String;)V

    .line 58
    return-void
.end method

.method public static reportAppStartMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "type"  # I
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "processName"  # Ljava/lang/String;
    .param p3, "lastFgpkgName"  # Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/meizu/dm/scene/DataMonManager;->scheduleData(ILjava/lang/String;)V

    .line 62
    return-void
.end method

.method public static reportMonkeyStatus(Z)V
    .registers 6
    .param p0, "isMonkey"  # Z

    .line 70
    const/16 v0, 0x29

    .line 71
    .local v0, "event":I
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->scheduleData(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public static reportProcess(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Z)V
    .registers 11
    .param p0, "packageName"  # Ljava/lang/String;
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "pid"  # I
    .param p4, "launcherMode"  # Ljava/lang/String;
    .param p5, "started"  # Z

    .line 42
    if-eqz p5, :cond_5

    .line 43
    const/16 v0, 0x18

    .local v0, "event":I
    goto :goto_7

    .line 45
    .end local v0  # "event":I
    :cond_5
    const/16 v0, 0x19

    .line 47
    .restart local v0  # "event":I
    :goto_7
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->scheduleData(ILjava/lang/String;)V

    .line 48
    return-void
.end method

.method public static reportStartTime(IJJLjava/lang/String;)V
    .registers 11
    .param p0, "type"  # I
    .param p1, "thisTime"  # J
    .param p3, "totalTime"  # J
    .param p5, "shortComponentName"  # Ljava/lang/String;

    .line 65
    const/16 v0, 0x1f

    .line 66
    .local v0, "event":I
    invoke-static {}, Lcom/meizu/dm/scene/DataMonManager;->getInstance()Lcom/meizu/dm/scene/DataMonManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/meizu/dm/scene/DataMonManager;->scheduleData(ILjava/lang/String;)V

    .line 67
    return-void
.end method
