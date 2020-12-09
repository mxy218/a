.class public Lcom/android/server/policy/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final INTERCEPT_POWER:I = 0x11171

.field public static final SCREEN_TOGGLED:I = 0x11170


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeInterceptPower(Ljava/lang/String;II)V
    .registers 5

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const p0, 0x11171

    invoke-static {p0, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 25
    return-void
.end method

.method public static writeScreenToggled(I)V
    .registers 2

    .line 20
    const v0, 0x11170

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 21
    return-void
.end method
