.class public final Lcom/android/server/textclassifier/TextClassificationManagerService;
.super Landroid/service/textclassifier/ITextClassifierService$Stub;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;,
        Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationManagerService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mSessionUserIds:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/textclassifier/TextClassificationSessionId;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mUserStates:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 127
    invoke-direct {p0}, Landroid/service/textclassifier/ITextClassifierService$Stub;-><init>()V

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    .line 128
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    .line 130
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V
    .registers 3

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .registers 2

    .line 66
    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 2

    .line 66
    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 345
    if-nez v0, :cond_19

    .line 346
    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;-><init>(ILandroid/content/Context;Ljava/lang/Object;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    .line 347
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 349
    :cond_19
    return-object v0
.end method

.method static synthetic lambda$logOnFailure$9(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextClassificationManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static logOnFailure(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/lang/String;)Ljava/lang/Runnable;
    .registers 3

    .line 436
    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 437
    :cond_4
    new-instance v0, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$R4aPVSf5_OfouCzD96pPpSsbUOs;

    invoke-direct {v0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$R4aPVSf5_OfouCzD96pPpSsbUOs;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/internal/util/FunctionalUtils;->handleExceptions(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Ljava/util/function/Consumer;)Ljava/lang/Runnable;

    move-result-object p0

    return-object p0
.end method

.method private static validateInput(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_3d

    .line 447
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 448
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2

    .line 449
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 450
    if-eq v3, v2, :cond_1d

    const/16 v2, 0x3e8

    if-ne v3, v2, :cond_1b

    goto :goto_1d

    :cond_1b
    move v2, v0

    goto :goto_1e

    :cond_1d
    :goto_1d
    move v2, v1

    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid package name. Package="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", CallingUid="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    goto :goto_3d

    .line 464
    :catch_3b
    move-exception p0

    goto :goto_6d

    .line 457
    :cond_3d
    :goto_3d
    const/16 p1, -0x2710

    if-eq p2, p1, :cond_42

    move v0, v1

    :cond_42
    const-string p1, "Null userId"

    invoke-static {v0, p1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 458
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    .line 459
    if-eq p1, p2, :cond_6b

    .line 460
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid userId. UserId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", CallingUserId="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_6b} :catch_3b

    .line 467
    :cond_6b
    nop

    .line 468
    return-void

    .line 465
    :goto_6d
    new-instance p1, Landroid/os/RemoteException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid request: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0, v1, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    throw p1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 359
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-string p3, "TextClassificationManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 360
    :cond_b
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 361
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-class p3, Landroid/view/textclassifier/TextClassificationManager;

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/textclassifier/TextClassificationManager;

    .line 362
    invoke-virtual {p2, p1}, Landroid/view/textclassifier/TextClassificationManager;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 364
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const-string p3, "context"

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 365
    iget-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 366
    :try_start_2c
    iget-object p3, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    .line 367
    const-string v0, "Number user states: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 368
    if-lez p3, :cond_5e

    .line 369
    const/4 v0, 0x0

    :goto_3d
    if-ge v0, p3, :cond_5e

    .line 370
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 371
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    .line 372
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$600(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 373
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 369
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 376
    :cond_5e
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Number of active sessions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 377
    monitor-exit p2

    .line 378
    return-void

    .line 377
    :catchall_7a
    move-exception p1

    monitor-exit p2
    :try_end_7c
    .catchall {:try_start_2c .. :try_end_7c} :catchall_7a

    throw p1
.end method

.method public synthetic lambda$onClassifyText$1$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public synthetic lambda$onCreateTextClassificationSession$7$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 313
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public synthetic lambda$onDestroyTextClassificationSession$8$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    return-void
.end method

.method public synthetic lambda$onDetectLanguage$5$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public synthetic lambda$onGenerateLinks$2$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public synthetic lambda$onSelectionEvent$3$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    return-void
.end method

.method public synthetic lambda$onSuggestConversationActions$6$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public synthetic lambda$onSuggestSelection$0$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    return-void
.end method

.method public synthetic lambda$onTextClassifierEvent$4$TextClassificationManagerService(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/android/server/textclassifier/TextClassificationManagerService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    return-void
.end method

.method public onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getUserId()I

    move-result v0

    .line 164
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassification$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 166
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 168
    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 169
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_4d

    .line 170
    :cond_24
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 171
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onClassifyText(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_4d

    .line 173
    :cond_30
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$aNIcwykiT4wOQ8InWE4Im6x6k-E;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassification$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    invoke-direct {v4, p3}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 175
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 173
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 177
    :goto_4d
    monitor-exit v1

    .line 178
    return-void

    .line 177
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getUserId()I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 305
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 306
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 307
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 308
    iget-object v2, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v2, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onCreateTextClassificationSession(Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 310
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 312
    :cond_2f
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$YjZl5O2nzrq_4fvkOEzBc8WS3aY;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$YjZl5O2nzrq_4fvkOEzBc8WS3aY;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationContext;Landroid/view/textclassifier/TextClassificationSessionId;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_42
    monitor-exit v1

    .line 317
    return-void

    .line 316
    :catchall_44
    move-exception p1

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_16 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 322
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_6
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 326
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1f

    .line 327
    :cond_1b
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 328
    :goto_1f
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 330
    invoke-direct {p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v9

    .line 331
    invoke-virtual {v9}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 332
    iget-object v1, v9, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1}, Landroid/service/textclassifier/ITextClassifierService;->onDestroyTextClassificationSession(Landroid/view/textclassifier/TextClassificationSessionId;)V

    .line 333
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mSessionUserIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    .line 335
    :cond_3a
    iget-object v1, v9, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v2, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v5, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$IiiA6SYq7BOE-U1FJlf97_wO-k4;

    invoke-direct {v5, p0, p1}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$IiiA6SYq7BOE-U1FJlf97_wO-k4;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, v2

    move-object v8, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_4d
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_4f
    move-exception p1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_6 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getUserId()I

    move-result v0

    .line 256
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLanguage$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 258
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 259
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 260
    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 261
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_4d

    .line 262
    :cond_24
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 263
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onDetectLanguage(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_4d

    .line 265
    :cond_30
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$yB5oS3bxsmWcPiI9f0QxOl0chLs;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$yB5oS3bxsmWcPiI9f0QxOl0chLs;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLanguage$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    invoke-direct {v4, p3}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 267
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 265
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 269
    :goto_4d
    monitor-exit v1

    .line 270
    return-void

    .line 269
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getUserId()I

    move-result v0

    .line 188
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextLinks$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 190
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 191
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 192
    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 193
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_4d

    .line 194
    :cond_24
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 195
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onGenerateLinks(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_4d

    .line 197
    :cond_30
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$1N5hVEv-gYS5VzkBAP5HLq01CQI;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$1N5hVEv-gYS5VzkBAP5HLq01CQI;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextLinks$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    invoke-direct {v4, p3}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 199
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 197
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_4d
    monitor-exit v1

    .line 202
    return-void

    .line 201
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getUserId()I

    move-result v0

    .line 210
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/SelectionEvent;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 212
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 213
    :try_start_13
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 214
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 215
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onSelectionEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    goto :goto_36

    .line 217
    :cond_23
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Xo8FJ3LmQoamgJ2foxZOcS-n70c;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Xo8FJ3LmQoamgJ2foxZOcS-n70c;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/SelectionEvent;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_36
    monitor-exit v1

    .line 222
    return-void

    .line 221
    :catchall_38
    move-exception p1

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_13 .. :try_end_3a} :catchall_38

    throw p1
.end method

.method public onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getUserId()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/ConversationActions$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 282
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 283
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 284
    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 285
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_4d

    .line 286
    :cond_24
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 287
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestConversationActions(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_4d

    .line 289
    :cond_30
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$8JdB0qZEYu-RmsTmNRpxWLWnRgs;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$8JdB0qZEYu-RmsTmNRpxWLWnRgs;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/ConversationActions$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    invoke-direct {v4, p3}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 291
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 289
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_4d
    monitor-exit v1

    .line 294
    return-void

    .line 293
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getUserId()I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/textclassifier/TextSelection$Request;->getCallingPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_16
    invoke-direct {p0, v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 144
    invoke-static {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$400(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 145
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->onFailure()V

    goto :goto_4d

    .line 146
    :cond_24
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 147
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v0, p1, p2, p3}, Landroid/service/textclassifier/ITextClassifierService;->onSuggestSelection(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    goto :goto_4d

    .line 149
    :cond_30
    iget-object v0, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Fy5j26FLkbnEPhoh1kWzQnYhcm8;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$Fy5j26FLkbnEPhoh1kWzQnYhcm8;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextSelection$Request;Landroid/service/textclassifier/ITextClassifierCallback;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;

    invoke-direct {v4, p3}, Lcom/android/server/textclassifier/-$$Lambda$k-7KcqZH2A0AukChaKa6Xru13_Q;-><init>(Landroid/service/textclassifier/ITextClassifierCallback;)V

    .line 151
    invoke-interface {p3}, Landroid/service/textclassifier/ITextClassifierCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    .line 149
    invoke-interface {v0, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 153
    :goto_4d
    monitor-exit v1

    .line 154
    return-void

    .line 153
    :catchall_4f
    move-exception p1

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_16 .. :try_end_51} :catchall_4f

    throw p1
.end method

.method public onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    if-nez v0, :cond_b

    .line 229
    const/4 v0, 0x0

    goto :goto_13

    .line 230
    :cond_b
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassificationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 231
    :goto_13
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    if-nez v1, :cond_1e

    .line 232
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    goto :goto_26

    .line 233
    :cond_1e
    invoke-virtual {p2}, Landroid/view/textclassifier/TextClassifierEvent;->getEventContext()Landroid/view/textclassifier/TextClassificationContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/textclassifier/TextClassificationContext;->getUserId()I

    move-result v1

    .line 234
    :goto_26
    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->validateInput(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_2e
    invoke-direct {p0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->getUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v7

    .line 238
    invoke-virtual {v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->isBoundLocked()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 239
    iget-object v1, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mService:Landroid/service/textclassifier/ITextClassifierService;

    invoke-interface {v1, p1, p2}, Landroid/service/textclassifier/ITextClassifierService;->onTextClassifierEvent(Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    goto :goto_51

    .line 241
    :cond_3e
    iget-object v1, v7, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mPendingRequests:Ljava/util/Queue;

    new-instance v8, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;

    new-instance v3, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/server/textclassifier/-$$Lambda$TextClassificationManagerService$sMLFGuslbXgLyLQJD4NeR5KkZn0;-><init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/view/textclassifier/TextClassificationSessionId;Landroid/view/textclassifier/TextClassifierEvent;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, v8

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/textclassifier/TextClassificationManagerService$PendingRequest;-><init>(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;Landroid/os/IBinder;Lcom/android/server/textclassifier/TextClassificationManagerService;Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)V

    invoke-interface {v1, v8}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 245
    :goto_51
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_53
    move-exception p1

    monitor-exit v0
    :try_end_55
    .catchall {:try_start_2e .. :try_end_55} :catchall_53

    throw p1
.end method

.method peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    return-object p1
.end method
