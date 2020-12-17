.class Lcom/android/server/lm/LmsExecutor$LazyHolder;
.super Ljava/lang/Object;
.source "LmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lm/LmsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/lm/LmsExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    new-instance v0, Lcom/android/server/lm/LmsExecutor;

    invoke-direct {v0}, Lcom/android/server/lm/LmsExecutor;-><init>()V

    sput-object v0, Lcom/android/server/lm/LmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/lm/LmsExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/lm/LmsExecutor;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/server/lm/LmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/lm/LmsExecutor;

    return-object v0
.end method
