.class Lcom/android/server/os/TemperatureMonitor$Instance;
.super Ljava/lang/Object;
.source "TemperatureMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/os/TemperatureMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Instance"
.end annotation


# static fields
.field public static INSTANCE:Lcom/android/server/os/TemperatureMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/android/server/os/TemperatureMonitor;

    invoke-direct {v0}, Lcom/android/server/os/TemperatureMonitor;-><init>()V

    sput-object v0, Lcom/android/server/os/TemperatureMonitor$Instance;->INSTANCE:Lcom/android/server/os/TemperatureMonitor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
