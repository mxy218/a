.class public Lcom/android/systemui/shared/system/BackgroundExecutor;
.super Ljava/lang/Object;
.source "BackgroundExecutor.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/shared/system/BackgroundExecutor;


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Lcom/android/systemui/shared/system/BackgroundExecutor;

    invoke-direct {v0}, Lcom/android/systemui/shared/system/BackgroundExecutor;-><init>()V

    sput-object v0, Lcom/android/systemui/shared/system/BackgroundExecutor;->sInstance:Lcom/android/systemui/shared/system/BackgroundExecutor;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 31
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/system/BackgroundExecutor;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static get()Lcom/android/systemui/shared/system/BackgroundExecutor;
    .registers 1

    .line 37
    sget-object v0, Lcom/android/systemui/shared/system/BackgroundExecutor;->sInstance:Lcom/android/systemui/shared/system/BackgroundExecutor;

    return-object v0
.end method
