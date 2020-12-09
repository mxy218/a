.class public Lcom/android/server/utils/ManagedApplicationService$LogEvent;
.super Ljava/lang/Object;
.source "ManagedApplicationService.java"

# interfaces
.implements Lcom/android/server/utils/ManagedApplicationService$LogFormattable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/ManagedApplicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogEvent"
.end annotation


# static fields
.field public static final EVENT_BINDING_DIED:I = 0x3

.field public static final EVENT_CONNECTED:I = 0x1

.field public static final EVENT_DISCONNECTED:I = 0x2

.field public static final EVENT_STOPPED_PERMANENTLY:I = 0x4


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final event:I

.field public final timestamp:J


# direct methods
.method public constructor <init>(JLandroid/content/ComponentName;I)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-wide p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    .line 125
    iput-object p3, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    .line 126
    iput p4, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    .line 127
    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 2

    .line 137
    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    .line 147
    const-string p0, "Unknown Event Occurred"

    return-object p0

    .line 145
    :cond_f
    const-string p0, "Permanently Stopped"

    return-object p0

    .line 143
    :cond_12
    const-string p0, "Binding Died For"

    return-object p0

    .line 141
    :cond_15
    const-string p0, "Disconnected"

    return-object p0

    .line 139
    :cond_18
    const-string p0, "Connected"

    return-object p0
.end method


# virtual methods
.method public toLogString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 6

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->timestamp:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p1, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "   "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->event:I

    invoke-static {p1}, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->eventToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Managed Service: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    iget-object p1, p0, Lcom/android/server/utils/ManagedApplicationService$LogEvent;->component:Landroid/content/ComponentName;

    if-nez p1, :cond_2d

    const-string p1, "None"

    goto :goto_31

    :cond_2d
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    :goto_31
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    return-object p1
.end method
