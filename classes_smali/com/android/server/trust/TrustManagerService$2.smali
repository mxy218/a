.class Lcom/android/server/trust/TrustManagerService$2;
.super Landroid/os/Handler;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .registers 2

    .line 1338
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1341
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_d0

    :pswitch_8  #0x5
    goto/16 :goto_ce

    .line 1396
    :pswitch_a  #0xf
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/trust/TrustManagerService;->access$2600(Lcom/android/server/trust/TrustManagerService;II)V

    goto/16 :goto_ce

    .line 1390
    :pswitch_15  #0xe
    iget v0, p1, Landroid/os/Message;->arg2:I

    if-ne v0, v3, :cond_20

    .line 1391
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2, v1, v3}, Lcom/android/server/trust/TrustManagerService;->access$2500(Lcom/android/server/trust/TrustManagerService;IIZ)V

    .line 1393
    :cond_20
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1394
    goto/16 :goto_ce

    .line 1352
    :pswitch_29  #0xd
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/trust/TrustManagerService;->access$2100(Lcom/android/server/trust/TrustManagerService;II)V

    .line 1353
    goto/16 :goto_ce

    .line 1373
    :pswitch_34  #0xc
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1, v3}, Lcom/android/server/trust/TrustManagerService;->access$2300(Lcom/android/server/trust/TrustManagerService;IZ)V

    .line 1374
    goto/16 :goto_ce

    .line 1377
    :pswitch_3d  #0xa
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    monitor-enter v0

    .line 1378
    :try_start_44
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$2400(Lcom/android/server/trust/TrustManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clone()Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 1379
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_77

    .line 1381
    nop

    :goto_50
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_76

    .line 1382
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 1383
    invoke-virtual {p1, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 1384
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->isTrustUsuallyManaged(I)Z

    move-result v3

    if-eq v2, v3, :cond_73

    .line 1385
    iget-object v3, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {v3}, Lcom/android/server/trust/TrustManagerService;->access$400(Lcom/android/server/trust/TrustManagerService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setTrustUsuallyManaged(ZI)V

    .line 1381
    :cond_73
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 1388
    :cond_76
    goto :goto_ce

    .line 1379
    :catchall_77
    move-exception p1

    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p1

    .line 1368
    :pswitch_7a  #0x9
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$102(Lcom/android/server/trust/TrustManagerService;I)I

    .line 1369
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$1700(Lcom/android/server/trust/TrustManagerService;)Lcom/android/server/trust/TrustManagerService$SettingsObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/trust/TrustManagerService$SettingsObserver;->updateContentObserver()V

    .line 1370
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1371
    goto :goto_ce

    .line 1365
    :pswitch_90  #0x7, 0x8, 0xb
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1366
    goto :goto_ce

    .line 1360
    :pswitch_98  #0x6
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1}, Lcom/android/server/trust/TrustManagerService;->access$100(Lcom/android/server/trust/TrustManagerService;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1361
    goto :goto_ce

    .line 1355
    :pswitch_a2  #0x4
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {p1, v2}, Lcom/android/server/trust/TrustManagerService;->refreshAgentList(I)V

    .line 1357
    iget-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-static {p1, v2}, Lcom/android/server/trust/TrustManagerService;->access$2200(Lcom/android/server/trust/TrustManagerService;I)V

    .line 1358
    goto :goto_ce

    .line 1349
    :pswitch_ad  #0x3
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_b4

    move v1, v3

    :cond_b4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, p1}, Lcom/android/server/trust/TrustManagerService;->access$2000(Lcom/android/server/trust/TrustManagerService;ZI)V

    .line 1350
    goto :goto_ce

    .line 1346
    :pswitch_ba  #0x2
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$1900(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1347
    goto :goto_ce

    .line 1343
    :pswitch_c4  #0x1
    iget-object v0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/trust/ITrustListener;

    invoke-static {v0, p1}, Lcom/android/server/trust/TrustManagerService;->access$1800(Lcom/android/server/trust/TrustManagerService;Landroid/app/trust/ITrustListener;)V

    .line 1344
    nop

    .line 1399
    :goto_ce
    return-void

    nop

    :pswitch_data_d0
    .packed-switch 0x1
        :pswitch_c4  #00000001
        :pswitch_ba  #00000002
        :pswitch_ad  #00000003
        :pswitch_a2  #00000004
        :pswitch_8  #00000005
        :pswitch_98  #00000006
        :pswitch_90  #00000007
        :pswitch_90  #00000008
        :pswitch_7a  #00000009
        :pswitch_3d  #0000000a
        :pswitch_90  #0000000b
        :pswitch_34  #0000000c
        :pswitch_29  #0000000d
        :pswitch_15  #0000000e
        :pswitch_a  #0000000f
    .end packed-switch
.end method
