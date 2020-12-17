.class Lcom/android/server/am/AmsExecutor$LazyHolder;
.super Ljava/lang/Object;
.source "AmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AmsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/am/AmsExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    new-instance v0, Lcom/android/server/am/AmsExecutor;

    invoke-direct {v0}, Lcom/android/server/am/AmsExecutor;-><init>()V

    sput-object v0, Lcom/android/server/am/AmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/am/AmsExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/am/AmsExecutor;
    .registers 1

    .line 48
    sget-object v0, Lcom/android/server/am/AmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/am/AmsExecutor;

    return-object v0
.end method
