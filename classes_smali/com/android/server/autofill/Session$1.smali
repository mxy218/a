.class Lcom/android/server/autofill/Session$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .registers 2

    .line 297
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_20

    .line 301
    iget-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/4 v0, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 302
    invoke-static {p1}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v1

    .line 301
    const-string/jumbo v1, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-static {p1, v0, v1, v2}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void

    .line 305
    :cond_20
    const-string/jumbo v0, "structure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    .line 306
    if-nez v0, :cond_33

    .line 307
    const-string p1, "AutofillSession"

    const-string v0, "No assist structure - app might have crashed providing it"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 311
    :cond_33
    const-string/jumbo v3, "receiverExtras"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 312
    if-nez p1, :cond_44

    .line 313
    const-string p1, "AutofillSession"

    const-string v0, "No receiver extras - app might have crashed providing it"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_44
    const-string v3, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 319
    sget-boolean v3, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v3, :cond_6c

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New structure for requestId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillSession"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_6c
    iget-object v3, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v3}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 331
    :try_start_73
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_73 .. :try_end_76} :catch_19b
    .catchall {:try_start_73 .. :try_end_76} :catchall_199

    .line 336
    nop

    .line 338
    :try_start_77
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 340
    move v5, v1

    :goto_7c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_92

    .line 341
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/autofill/AutofillId;

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget v7, v7, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v6, v7}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 340
    add-int/lit8 v5, v5, 0x1

    goto :goto_7c

    .line 345
    :cond_92
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v4

    .line 347
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$400(Lcom/android/server/autofill/Session;)Z

    move-result v5

    if-eqz v5, :cond_12e

    .line 349
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 350
    invoke-static {v6}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 349
    invoke-virtual {v5, v6}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 351
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_d1

    .line 352
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "url_bars in compat mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_d1
    if-eqz v5, :cond_12c

    .line 355
    iget-object v6, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, v5}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/autofill/Session;->access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 356
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    if-eqz v5, :cond_12c

    .line 357
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 358
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_11a

    .line 359
    const-string v6, "AutofillSession"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting urlBar as id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " and domain "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 360
    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 359
    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_11a
    new-instance v6, Lcom/android/server/autofill/ViewState;

    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v8, 0x200

    invoke-direct {v6, v5, v7, v8}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 364
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v7}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    :cond_12c
    or-int/lit8 v4, v4, 0x2

    .line 369
    :cond_12e
    invoke-virtual {v0, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 371
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v5

    if-nez v5, :cond_143

    .line 372
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v5, v6}, Lcom/android/server/autofill/Session;->access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 374
    :cond_143
    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v5, Landroid/service/autofill/FillContext;

    iget-object v6, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v6}, Lcom/android/server/autofill/Session;->access$1000(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v6

    invoke-direct {v5, p1, v0, v6}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)V

    .line 378
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 379
    move v2, v1

    :goto_167
    if-ge v2, v0, :cond_17d

    .line 380
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v6, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v6}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/autofill/FillContext;

    invoke-static {v5, v6, v4}, Lcom/android/server/autofill/Session;->access$1200(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_167

    .line 383
    :cond_17d
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 384
    invoke-static {v0, v1}, Lcom/android/server/autofill/Session;->access$1300(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 385
    new-instance v1, Landroid/service/autofill/FillRequest;

    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$1400(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2, v4}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V

    .line 386
    monitor-exit v3
    :try_end_18f
    .catchall {:try_start_77 .. :try_end_18f} :catchall_199

    .line 388
    iget-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {p1}, Lcom/android/server/autofill/Session;->access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 389
    return-void

    .line 386
    :catchall_199
    move-exception p1

    goto :goto_1b0

    .line 332
    :catch_19b
    move-exception p1

    .line 333
    :try_start_19c
    iget-object v4, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const-string v5, "Exception lazy loading assist structure for %s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v0

    aput-object v0, v6, v1

    aput-object p1, v6, v2

    .line 333
    invoke-static {v4, p1, v5, v6}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    monitor-exit v3

    return-void

    .line 386
    :goto_1b0
    monitor-exit v3
    :try_end_1b1
    .catchall {:try_start_19c .. :try_end_1b1} :catchall_199

    throw p1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .registers 2

    .line 394
    return-void
.end method
