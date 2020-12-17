.class Lcom/android/server/hips/intercept/InterceptionEventStats$EventStatsHoler;
.super Ljava/lang/Object;
.source "InterceptionEventStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hips/intercept/InterceptionEventStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventStatsHoler"
.end annotation


# static fields
.field private static INSTANCE:Lcom/android/server/hips/intercept/InterceptionEventStats;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 52
    new-instance v0, Lcom/android/server/hips/intercept/InterceptionEventStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/hips/intercept/InterceptionEventStats;-><init>(Lcom/android/server/hips/intercept/InterceptionEventStats$1;)V

    sput-object v0, Lcom/android/server/hips/intercept/InterceptionEventStats$EventStatsHoler;->INSTANCE:Lcom/android/server/hips/intercept/InterceptionEventStats;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/hips/intercept/InterceptionEventStats;
    .registers 1

    .line 51
    sget-object v0, Lcom/android/server/hips/intercept/InterceptionEventStats$EventStatsHoler;->INSTANCE:Lcom/android/server/hips/intercept/InterceptionEventStats;

    return-object v0
.end method
