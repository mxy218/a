.class public final Lcom/android/server/job/controllers/idle/CarIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "CarIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final ACTION_FORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.FORCE_IDLE"

.field public static final ACTION_GARAGE_MODE_OFF:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_OFF"

.field public static final ACTION_GARAGE_MODE_ON:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_ON"

.field public static final ACTION_UNFORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.UNFORCE_IDLE"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.CarIdlenessTracker"


# instance fields
.field private mForced:Z

.field private mGarageModeOn:Z

.field private mIdle:Z

.field private mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 33
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 34
    const-string v1, "JobScheduler.CarIdlenessTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_10

    :cond_e
    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    :goto_10
    const/4 v0, 0x1

    :goto_11
    sput-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 57
    return-void
.end method

.method private handleScreenOn()V
    .registers 2

    .line 157
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_9

    goto :goto_1c

    .line 160
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_16

    .line 162
    const-string v0, "Device is exiting idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    goto :goto_21

    .line 166
    :cond_16
    const-string v0, "Device is already non-idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_21

    .line 159
    :cond_1c
    :goto_1c
    const-string v0, "Screen is on, but device cannot exit idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 168
    :goto_21
    return-void
.end method

.method private static logIfDebug(Ljava/lang/String;)V
    .registers 2

    .line 171
    sget-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_9

    .line 172
    const-string v0, "JobScheduler.CarIdlenessTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_9
    return-void
.end method

.method private setForceIdleState(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    .line 127
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    .line 128
    return-void
.end method

.method private triggerIdlenessOnce()V
    .registers 3

    .line 145
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_a

    .line 147
    const-string v0, "Device is already idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_19

    .line 150
    :cond_a
    const-string v0, "Device is going idle once"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 152
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-interface {v0, v1}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    .line 154
    :goto_19
    return-void
.end method

.method private updateIdlenessState()V
    .registers 4

    .line 131
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 132
    :goto_c
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eq v1, v0, :cond_2e

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device idleness changed. New idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 135
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    .line 136
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-interface {v0, v1}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_42

    .line 139
    :cond_2e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device idleness is the same. Current idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 141
    :goto_42
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 87
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 88
    const-string v0, "  mGarageModeOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    return-void
.end method

.method public isIdle()Z
    .registers 2

    .line 61
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 97
    const-string p2, "com.android.server.jobscheduler.FORCE_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2b

    .line 98
    const-string p1, "Forcing idle..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto/16 :goto_a9

    .line 100
    :cond_2b
    const-string p2, "com.android.server.jobscheduler.UNFORCE_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_3d

    .line 101
    const-string p1, "Unforcing idle..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto :goto_a9

    .line 103
    :cond_3d
    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4e

    .line 104
    const-string p1, "Screen is on..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->handleScreenOn()V

    goto :goto_a9

    .line 106
    :cond_4e
    const-string p2, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_61

    .line 107
    const-string p1, "GarageMode is on..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 108
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 109
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_a9

    .line 110
    :cond_61
    const-string p2, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 111
    const-string p1, "GarageMode is off..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 112
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    .line 113
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_a9

    .line 114
    :cond_74
    const-string p2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a9

    .line 115
    iget-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-nez p1, :cond_89

    .line 116
    const-string p1, "Idle trigger fired..."

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->triggerIdlenessOnce()V

    goto :goto_a9

    .line 119
    :cond_89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " screen="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    .line 123
    :cond_a9
    :goto_a9
    return-void
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .registers 4

    .line 66
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 68
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v0, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v0, "com.android.server.jobscheduler.FORCE_IDLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v0, "com.android.server.jobscheduler.UNFORCE_IDLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 83
    return-void
.end method
