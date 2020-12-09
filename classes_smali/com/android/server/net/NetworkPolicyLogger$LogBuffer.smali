.class final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RingBuffer<",
        "Lcom/android/server/net/NetworkPolicyLogger$Data;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDate:Ljava/util/Date;

.field private static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 325
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 327
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 330
    const-class v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    .line 331
    return-void
.end method

.method private formatDate(J)Ljava/lang/String;
    .registers 4

    .line 536
    sget-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 537
    sget-object p1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    sget-object p2, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .registers 5

    .line 421
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 422
    if-nez v0, :cond_9

    return-void

    .line 424
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 425
    const/16 v1, 0x8

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 426
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 427
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 428
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 429
    return-void
.end method

.method public appIdleWlChanged(IZ)V
    .registers 5

    .line 432
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 433
    if-nez v0, :cond_9

    return-void

    .line 435
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 436
    const/16 v1, 0xe

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 437
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 438
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 439
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 440
    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .registers 5

    .line 411
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 412
    if-nez v0, :cond_9

    return-void

    .line 414
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 415
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 416
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 418
    return-void
.end method

.method public event(Ljava/lang/String;)V
    .registers 5

    .line 346
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 347
    if-nez v0, :cond_9

    return-void

    .line 349
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 350
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 351
    iput-object p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 353
    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .registers 5

    .line 476
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 477
    if-nez v0, :cond_9

    return-void

    .line 479
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 480
    const/16 v1, 0xc

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 481
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 482
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 484
    return-void
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .registers 5

    .line 500
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    const-string v1, "-"

    packed-switch v0, :pswitch_data_b0

    .line 531
    :pswitch_7  #0xd
    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 521
    :pswitch_e  #0xe
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$700(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 529
    :pswitch_17  #0xc
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$1100(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 527
    :pswitch_20  #0xb
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$1000(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 525
    :pswitch_2b  #0xa
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$900(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 523
    :pswitch_34  #0x9
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$800(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 519
    :pswitch_3b  #0x8
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$600(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 517
    :pswitch_44  #0x7
    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$500(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 515
    :pswitch_4b  #0x6
    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$400(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 513
    :pswitch_54  #0x5
    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$300(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 511
    :pswitch_5b  #0x4
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$200(IZ)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 509
    :pswitch_64  #0x3
    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$100(III)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 506
    :pswitch_6f  #0x2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 504
    :pswitch_92  #0x1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {p1}, Lcom/android/server/net/NetworkPolicyLogger;->access$000(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 502
    :pswitch_ad  #0x0
    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object p1

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_ad  #00000000
        :pswitch_92  #00000001
        :pswitch_6f  #00000002
        :pswitch_64  #00000003
        :pswitch_5b  #00000004
        :pswitch_54  #00000005
        :pswitch_4b  #00000006
        :pswitch_44  #00000007
        :pswitch_3b  #00000008
        :pswitch_34  #00000009
        :pswitch_2b  #0000000a
        :pswitch_20  #0000000b
        :pswitch_17  #0000000c
        :pswitch_7  #0000000d
        :pswitch_e  #0000000e
    .end packed-switch
.end method

.method public meterednessChanged(IZ)V
    .registers 5

    .line 379
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 380
    if-nez v0, :cond_9

    return-void

    .line 382
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 383
    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 384
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 385
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 387
    return-void
.end method

.method public networkBlocked(II)V
    .registers 5

    .line 356
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 357
    if-nez v0, :cond_9

    return-void

    .line 359
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 360
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 361
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 362
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 363
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 364
    return-void
.end method

.method public paroleStateChanged(Z)V
    .registers 5

    .line 443
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 444
    if-nez v0, :cond_9

    return-void

    .line 446
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 447
    const/16 v1, 0x9

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 448
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 450
    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .registers 5

    .line 400
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 401
    if-nez v0, :cond_9

    return-void

    .line 403
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 404
    const/4 v1, 0x6

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 405
    iput-boolean p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 406
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 408
    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 487
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 488
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_31

    .line 489
    aget-object v2, v0, v1

    if-nez v2, :cond_15

    .line 490
    const-string v2, "NULL"

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 491
    goto :goto_2e

    .line 493
    :cond_15
    aget-object v2, v0, v1

    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 494
    const-string v2, " - "

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 495
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 488
    :goto_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 497
    :cond_31
    return-void
.end method

.method public tempPowerSaveWlChanged(IZ)V
    .registers 5

    .line 453
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 454
    if-nez v0, :cond_9

    return-void

    .line 456
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 457
    const/16 v1, 0xa

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 458
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 459
    iput-boolean p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 461
    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .registers 6

    .line 464
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 465
    if-nez v0, :cond_9

    return-void

    .line 467
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 468
    const/16 v1, 0xb

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 469
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 470
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 471
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 473
    return-void
.end method

.method public uidPolicyChanged(III)V
    .registers 6

    .line 367
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 368
    if-nez v0, :cond_9

    return-void

    .line 370
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 371
    const/4 v1, 0x3

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 372
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 373
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 374
    iput p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 376
    return-void
.end method

.method public uidStateChanged(IIJ)V
    .registers 7

    .line 334
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 335
    if-nez v0, :cond_9

    return-void

    .line 337
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 338
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 339
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 340
    iput p2, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 341
    iput-wide p3, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 343
    return-void
.end method

.method public userRemoved(I)V
    .registers 5

    .line 390
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 391
    if-nez v0, :cond_9

    return-void

    .line 393
    :cond_9
    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    .line 394
    const/4 v1, 0x5

    iput v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 395
    iput p1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    .line 397
    return-void
.end method
