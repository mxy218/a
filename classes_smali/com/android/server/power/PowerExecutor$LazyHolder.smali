.class Lcom/android/server/power/PowerExecutor$LazyHolder;
.super Ljava/lang/Object;
.source "PowerExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/power/PowerExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/android/server/power/PowerExecutor;

    invoke-direct {v0}, Lcom/android/server/power/PowerExecutor;-><init>()V

    sput-object v0, Lcom/android/server/power/PowerExecutor$LazyHolder;->INSTANCE:Lcom/android/server/power/PowerExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/android/server/power/PowerExecutor;
    .registers 1

    .line 39
    sget-object v0, Lcom/android/server/power/PowerExecutor$LazyHolder;->INSTANCE:Lcom/android/server/power/PowerExecutor;

    return-object v0
.end method
