.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    }
.end annotation


# static fields
.field public static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"


# instance fields
.field public mActivityTaskManager:Landroid/app/IActivityTaskManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistScreenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field private mCallbacksLock:Ljava/lang/Object;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mPendingDataCount:I

.field private mPendingScreenshotCount:I

.field private mRequestScreenshotAppOps:I

.field private mRequestStructureAppOps:I

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .registers 9

    .line 131
    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    .line 132
    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    .line 133
    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    .line 134
    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    .line 135
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 136
    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    .line 137
    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 138
    iput p6, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    .line 139
    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    .line 140
    return-void
.end method

.method private dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .registers 5

    .line 368
    nop

    .line 369
    nop

    .line 370
    if-eqz p1, :cond_c

    .line 371
    const-string/jumbo v0, "receiverExtras"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 372
    :goto_d
    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 373
    const-string v1, "index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 374
    const-string v2, "count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1e

    .line 372
    :cond_1d
    move v0, v1

    .line 376
    :goto_1e
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    .line 377
    return-void
.end method

.method private dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .registers 3

    .line 380
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    .line 381
    return-void
.end method

.method private flushPendingAssistData()V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_18

    .line 296
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 295
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 298
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 300
    nop

    :goto_24
    if-ge v1, v0, :cond_34

    .line 301
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, v2}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 300
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 303
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 304
    return-void
.end method

.method private requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 194
    move-object/from16 v8, p0

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 196
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 197
    return-void

    .line 201
    :cond_10
    nop

    .line 203
    const/4 v11, 0x0

    :try_start_12
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0}, Landroid/app/IActivityTaskManager;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_18} :catch_19

    .line 206
    goto :goto_1b

    .line 204
    :catch_19
    move-exception v0

    move v0, v11

    .line 207
    :goto_1b
    and-int v1, p5, v0

    .line 208
    const/4 v12, 0x1

    if-eqz p3, :cond_29

    if-eqz v0, :cond_29

    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_29

    move v0, v12

    goto :goto_2a

    :cond_29
    move v0, v11

    :goto_2a
    and-int v13, p6, v0

    .line 211
    iput-boolean v11, v8, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 212
    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 213
    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 214
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v14, 0x0

    if-eqz p3, :cond_d0

    .line 218
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v8, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    invoke-virtual {v0, v2, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_be

    if-eqz v1, :cond_be

    .line 220
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    .line 221
    move v7, v11

    :goto_50
    if-ge v7, v15, :cond_bc

    .line 222
    move-object/from16 v6, p1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;

    .line 224
    :try_start_5b
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 225
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 226
    const-string v0, "index"

    invoke-virtual {v4, v0, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-string v0, "count"

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    if-eqz p2, :cond_7c

    .line 229
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-interface {v0, v8, v4, v5, v11}, Landroid/app/IActivityTaskManager;->requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z

    move-result v0

    move/from16 v17, v7

    goto :goto_96

    .line 231
    :cond_7c
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mActivityTaskManager:Landroid/app/IActivityTaskManager;
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_7e} :catch_b6

    const/4 v2, 0x1

    if-nez v7, :cond_83

    move v0, v12

    goto :goto_84

    :cond_83
    move v0, v11

    :goto_84
    if-nez v7, :cond_89

    move/from16 v16, v12

    goto :goto_8b

    :cond_89
    move/from16 v16, v11

    :goto_8b
    move-object/from16 v3, p0

    move v6, v0

    move/from16 v17, v7

    move/from16 v7, v16

    :try_start_92
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityTaskManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    .line 234
    :goto_96
    if-eqz v0, :cond_a0

    .line 235
    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_b5

    .line 246
    :catch_9e
    move-exception v0

    goto :goto_b9

    .line 236
    :cond_a0
    if-nez v17, :cond_b5

    .line 238
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 239
    invoke-direct {v8, v14}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_b3

    .line 241
    :cond_ae
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_b3} :catch_9e

    .line 243
    :goto_b3
    nop

    .line 244
    goto :goto_bd

    .line 248
    :cond_b5
    :goto_b5
    goto :goto_b9

    .line 246
    :catch_b6
    move-exception v0

    move/from16 v17, v7

    .line 221
    :goto_b9
    add-int/lit8 v7, v17, 0x1

    goto :goto_50

    :cond_bc
    move v11, v13

    .line 250
    :goto_bd
    goto :goto_d1

    .line 252
    :cond_be
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 253
    invoke-direct {v8, v14}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_cf

    .line 255
    :cond_ca
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    :goto_cf
    goto :goto_d1

    .line 217
    :cond_d0
    move v11, v13

    .line 261
    :goto_d1
    if-eqz p4, :cond_104

    .line 262
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_f3

    if-eqz v11, :cond_f3

    .line 265
    :try_start_df
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_screen"

    invoke-static {v0, v1, v12}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 266
    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v12

    iput v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 267
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v8}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_f0
    .catch Landroid/os/RemoteException; {:try_start_df .. :try_end_f0} :catch_f1

    goto :goto_f2

    .line 268
    :catch_f1
    move-exception v0

    .line 270
    :goto_f2
    goto :goto_104

    .line 272
    :cond_f3
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_ff

    .line 273
    invoke-direct {v8, v14}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_104

    .line 275
    :cond_ff
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_104
    :goto_104
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 282
    return-void
.end method

.method private tryDispatchRequestComplete()V
    .registers 2

    .line 384
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_1d

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    .line 385
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 386
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    .line 388
    :cond_1d
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    .line 320
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    .line 321
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 322
    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 323
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 324
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 392
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 394
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "mAssistScreenshot="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public getPendingDataCount()I
    .registers 2

    .line 307
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return v0
.end method

.method public getPendingScreenshotCount()I
    .registers 2

    .line 311
    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 4

    .line 329
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 331
    monitor-exit v0

    return-void

    .line 333
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    .line 335
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 337
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 338
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    .line 339
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 342
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :goto_26
    monitor-exit v0

    .line 345
    return-void

    .line 344
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 4

    .line 349
    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    .line 350
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_9

    .line 351
    monitor-exit v0

    return-void

    .line 353
    :cond_9
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    .line 355
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 357
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_26

    .line 362
    :cond_21
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_26
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public processPendingAssistData()V
    .registers 1

    .line 289
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    .line 291
    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 165
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V

    .line 167
    return-void
.end method

.method public requestAutofillData(Ljava/util/List;ILjava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 150
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/AssistDataRequester;->requestData(Ljava/util/List;ZZZZZILjava/lang/String;)V

    .line 154
    return-void
.end method
