.class Lcom/android/server/usage/UsageStatsService$ActivityData;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityData"
.end annotation


# instance fields
.field private final mTaskRootClass:Ljava/lang/String;

.field private final mTaskRootPackage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/server/usage/UsageStatsService$1;)V
    .registers 4

    .line 150
    invoke-direct {p0, p1, p2}, Lcom/android/server/usage/UsageStatsService$ActivityData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/usage/UsageStatsService$ActivityData;)Ljava/lang/String;
    .registers 1

    .line 150
    iget-object p0, p0, Lcom/android/server/usage/UsageStatsService$ActivityData;->mTaskRootClass:Ljava/lang/String;

    return-object p0
.end method
