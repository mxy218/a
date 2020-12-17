.class final Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;
.super Ljava/lang/Object;
.source "MultiClientInputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/MultiClientInputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowHandleSource"
.end annotation


# static fields
.field private static sNextValue:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "WindowHandleSource.class"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 609
    const/4 v0, 0x0

    sput v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 611
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 612
    return-void
.end method

.method static declared-synchronized getNext()I
    .registers 3

    const-class v0, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;

    monitor-enter v0

    .line 615
    :try_start_3
    sget v1, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I

    .line 616
    .local v1, "result":I
    sget v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I

    .line 617
    sget v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I

    if-gez v2, :cond_12

    .line 618
    const/4 v2, 0x0

    sput v2, Lcom/android/server/inputmethod/MultiClientInputMethodManagerService$WindowHandleSource;->sNextValue:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_14

    .line 620
    :cond_12
    monitor-exit v0

    return v1

    .line 614
    .end local v1  # "result":I
    :catchall_14
    move-exception v1

    monitor-exit v0

    throw v1
.end method
