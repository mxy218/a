.class Lcom/android/server/wm/WmsExecutor$LazyHolder;
.super Ljava/lang/Object;
.source "WmsExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WmsExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/server/wm/WmsExecutor;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 33
    new-instance v0, Lcom/android/server/wm/WmsExecutor;

    invoke-direct {v0}, Lcom/android/server/wm/WmsExecutor;-><init>()V

    sput-object v0, Lcom/android/server/wm/WmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/wm/WmsExecutor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/android/server/wm/WmsExecutor;
    .registers 1

    .line 32
    sget-object v0, Lcom/android/server/wm/WmsExecutor$LazyHolder;->INSTANCE:Lcom/android/server/wm/WmsExecutor;

    return-object v0
.end method
