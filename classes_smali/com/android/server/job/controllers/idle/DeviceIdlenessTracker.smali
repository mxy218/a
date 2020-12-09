.class public final Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdlenessTracker"


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mDockIdle:Z

.field private mIdle:Z

.field private mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field private mIdleWindowSlop:J

.field private mInactivityIdleThreshold:J

.field private mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 36
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    .line 37
    const-string v1, "JobScheduler.DeviceIdlenessTracker"

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
    sput-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/-$$Lambda$DeviceIdlenessTracker$-H1-ZwZAJ-vh10A0PeYXaZLj_R0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 59
    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 60
    return-void
.end method

.method private handleIdleTrigger()V
    .registers 5

    .line 162
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_37

    .line 163
    :cond_e
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_2c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 167
    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-interface {v0, v1}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_5b

    .line 169
    :cond_37
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_5b

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_5b
    :goto_5b
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 98
    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 100
    const-string v0, "  mDockIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 101
    return-void
.end method

.method public isIdle()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public synthetic lambda$new$0$DeviceIdlenessTracker()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    .line 52
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 20

    .line 105
    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 106
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "JobScheduler.DeviceIdlenessTracker"

    const/4 v4, 0x1

    const-string v5, "android.intent.action.DOCK_ACTIVE"

    const/4 v6, 0x0

    if-nez v2, :cond_9f

    .line 107
    const-string v2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9f

    .line 108
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto/16 :goto_9f

    .line 130
    :cond_24
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "android.intent.action.DOCK_IDLE"

    if-nez v2, :cond_4c

    .line 131
    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    .line 132
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    goto :goto_4c

    .line 155
    :cond_3d
    const-string v2, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    goto/16 :goto_dd

    .line 155
    :cond_4a
    :goto_4a
    goto/16 :goto_dd

    .line 136
    :cond_4c
    :goto_4c
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 137
    iget-boolean v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_57

    .line 139
    return-void

    .line 141
    :cond_57
    iput-boolean v4, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_5e

    .line 144
    :cond_5a
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 145
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 147
    :goto_5e
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 148
    iget-wide v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    add-long v10, v4, v6

    .line 149
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_90

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scheduling idle : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " when="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_90
    iget-object v8, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v9, 0x2

    iget-wide v12, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    iget-object v15, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/16 v16, 0x0

    const-string v14, "JS idleness"

    invoke-virtual/range {v8 .. v16}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_4a

    .line 109
    :cond_9f
    :goto_9f
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 110
    iget-boolean v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v2, :cond_aa

    .line 112
    return-void

    .line 114
    :cond_aa
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_b1

    .line 117
    :cond_ad
    iput-boolean v4, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    .line 118
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    .line 120
    :goto_b1
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_c9

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exiting idle : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_c9
    iget-object v1, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v2, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 125
    iget-boolean v1, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v1, :cond_dd

    .line 127
    iput-boolean v6, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    .line 128
    iget-object v1, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    iget-boolean v0, v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    .line 158
    :cond_dd
    :goto_dd
    return-void
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .registers 5

    .line 69
    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0061

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0060

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    .line 74
    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    .line 76
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    const-string v0, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    const-string v0, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v0, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v0, "android.intent.action.DOCK_IDLE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    const-string v0, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {p2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void
.end method
