.class Lcom/android/server/om/OverlayManagerService$1;
.super Landroid/content/om/IOverlayManager$Stub;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 524
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V
    .registers 4

    .line 848
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CHANGE_OVERLAY_PACKAGES"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    return-void
.end method

.method private enforceDumpPermission(Ljava/lang/String;)V
    .registers 4

    .line 859
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method private handleIncomingUser(ILjava/lang/String;)I
    .registers 10

    .line 836
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 837
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 836
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 753
    new-instance p1, Lcom/android/server/om/DumpState;

    invoke-direct {p1}, Lcom/android/server/om/DumpState;-><init>()V

    .line 754
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 756
    const/4 v1, 0x0

    move v2, v1

    .line 757
    :goto_b
    array-length v3, p3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_ad

    .line 758
    aget-object v3, p3, v2

    .line 759
    if-eqz v3, :cond_ad

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_ad

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_23

    .line 760
    goto/16 :goto_ad

    .line 762
    :cond_23
    add-int/lit8 v2, v2, 0x1

    .line 764
    const-string v5, "-h"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 765
    const-string p1, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const-string p1, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string p1, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    const-string p1, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    const-string p1, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    const-string p1, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    const-string p1, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    return-void

    .line 773
    :cond_51
    const-string v5, "--user"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_86

    .line 774
    array-length v3, p3

    if-lt v2, v3, :cond_62

    .line 775
    const-string p1, "Error: user missing argument"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 776
    return-void

    .line 779
    :cond_62
    :try_start_62
    aget-object v3, p3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_6b
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_6b} :catch_6e

    .line 780
    add-int/lit8 v2, v2, 0x1

    .line 784
    goto :goto_ab

    .line 781
    :catch_6e
    move-exception p1

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: user argument is not a number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p3, v2

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    return-void

    .line 785
    :cond_86
    const-string v5, "--verbose"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 786
    invoke-virtual {p1, v4}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_ab

    .line 788
    :cond_92
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    :goto_ab
    goto/16 :goto_b

    .line 791
    :cond_ad
    :goto_ad
    array-length v3, p3

    if-ge v2, v3, :cond_132

    .line 792
    aget-object v3, p3, v2

    .line 793
    add-int/lit8 v2, v2, 0x1

    .line 794
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_16a

    :cond_bb
    goto/16 :goto_128

    :sswitch_bd
    const-string v1, "basecodepath"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x4

    goto :goto_128

    :sswitch_c7
    const-string/jumbo v4, "packagename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v0, v1

    goto :goto_128

    :sswitch_d2
    const-string v1, "isstatic"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x7

    goto :goto_128

    :sswitch_dc
    const-string v1, "isenabled"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x6

    goto :goto_128

    :sswitch_e6
    const-string/jumbo v1, "state"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x5

    goto :goto_128

    :sswitch_f1
    const-string v1, "category"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/16 v0, 0x9

    goto :goto_128

    :sswitch_fc
    const-string/jumbo v1, "userid"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    move v0, v4

    goto :goto_128

    :sswitch_107
    const-string/jumbo v1, "priority"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/16 v0, 0x8

    goto :goto_128

    :sswitch_113
    const-string/jumbo v1, "targetpackagename"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x2

    goto :goto_128

    :sswitch_11e
    const-string/jumbo v1, "targetoverlayablename"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    const/4 v0, 0x3

    :goto_128
    packed-switch v0, :pswitch_data_194

    .line 808
    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    goto :goto_132

    .line 805
    :pswitch_12f  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    invoke-virtual {p1, v3}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 812
    :cond_132
    :goto_132
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_140

    array-length v0, p3

    if-ge v2, v0, :cond_140

    .line 813
    aget-object p3, p3, v2

    invoke-virtual {p1, p3}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    .line 817
    :cond_140
    const-string p3, "dump"

    invoke-direct {p0, p3}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 818
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p3}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p3

    monitor-enter p3

    .line 819
    :try_start_14c
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 820
    invoke-virtual {p1}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_164

    .line 821
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 823
    :cond_164
    monitor-exit p3

    .line 824
    return-void

    .line 823
    :catchall_166
    move-exception p1

    monitor-exit p3
    :try_end_168
    .catchall {:try_start_14c .. :try_end_168} :catchall_166

    throw p1

    nop

    :sswitch_data_16a
    .sparse-switch
        -0x685a1e7c -> :sswitch_11e
        -0x4a674a60 -> :sswitch_113
        -0x4577865c -> :sswitch_107
        -0x31d4cdda -> :sswitch_fc
        0x302bcfe -> :sswitch_f1
        0x68ac491 -> :sswitch_e6
        0x1a483ad7 -> :sswitch_dc
        0x2995d418 -> :sswitch_d2
        0x36391bd1 -> :sswitch_c7
        0x64f6f963 -> :sswitch_bd
    .end sparse-switch

    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_12f  #00000000
        :pswitch_12f  #00000001
        :pswitch_12f  #00000002
        :pswitch_12f  #00000003
        :pswitch_12f  #00000004
        :pswitch_12f  #00000005
        :pswitch_12f  #00000006
        :pswitch_12f  #00000007
        :pswitch_12f  #00000008
        :pswitch_12f  #00000009
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 528
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getAllOverlays "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 529
    const-string v2, "getAllOverlays"

    invoke-direct {p0, p1, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p1

    .line 531
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_36

    .line 532
    :try_start_24
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object p1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_24 .. :try_end_2f} :catchall_33

    .line 535
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    return-object p1

    .line 533
    :catchall_33
    move-exception p1

    :try_start_34
    monitor-exit v2
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_36

    .line 535
    :catchall_36
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 725
    const-wide/32 v0, 0x4000000

    :try_start_3
    const-string v2, "OMS#getDefaultOverlayPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 726
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-virtual {v2}, Lcom/android/server/om/OverlayManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.MODIFY_THEME_OVERLAY"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_39

    .line 731
    :try_start_18
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_34

    .line 732
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->getDefaultOverlayPackages()[Ljava/lang/String;

    move-result-object v5

    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_31

    .line 735
    :try_start_2a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_39

    .line 738
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 732
    return-object v5

    .line 733
    :catchall_31
    move-exception v5

    :try_start_32
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    :try_start_33
    throw v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 735
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 738
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 561
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 562
    const-string v2, "getOverlayInfo"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3d

    .line 563
    if-nez p1, :cond_24

    .line 564
    const/4 p1, 0x0

    .line 571
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    return-object p1

    .line 567
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2b
    .catchall {:try_start_24 .. :try_end_2b} :catchall_3d

    .line 568
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_2b .. :try_end_36} :catchall_3a

    .line 571
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    return-object p1

    .line 569
    :catchall_3a
    move-exception p1

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    throw p1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3d

    .line 571
    :catchall_3d
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#getOverlayInfosForTarget "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 544
    const-string v2, "getOverlayInfosForTarget"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2

    .line 545
    if-nez p1, :cond_27

    .line 546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_40

    .line 553
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    return-object p1

    .line 549
    :cond_27
    :try_start_27
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_40

    .line 550
    :try_start_2e
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_3d

    .line 553
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    return-object p1

    .line 551
    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    :try_start_3f
    throw p1
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_40

    .line 553
    :catchall_40
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 747
    new-instance v0, Lcom/android/server/om/OverlayManagerShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/om/OverlayManagerShellCommand;-><init>(Landroid/content/om/IOverlayManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/om/OverlayManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 749
    return-void
.end method

.method public setEnabled(Ljava/lang/String;ZI)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 579
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabled "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 580
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 581
    const-string/jumbo v2, "setEnabled"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_58

    .line 582
    if-nez p1, :cond_33

    .line 583
    const/4 p1, 0x0

    .line 595
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    return p1

    .line 586
    :cond_33
    :try_start_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_58

    .line 588
    :try_start_37
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_53

    .line 589
    :try_start_3e
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZI)Z

    move-result p1

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_50

    .line 592
    :try_start_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_58

    .line 595
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    return p1

    .line 590
    :catchall_50
    move-exception p1

    :try_start_51
    monitor-exit v4
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    :try_start_52
    throw p1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 592
    :catchall_53
    move-exception p1

    :try_start_54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .line 595
    :catchall_58
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 603
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabledExclusive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 604
    const-string/jumbo v2, "setEnabledExclusive"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 605
    const-string/jumbo v2, "setEnabledExclusive"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 606
    const/4 v2, 0x0

    if-eqz p1, :cond_57

    if-nez p2, :cond_32

    goto :goto_57

    .line 610
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5c

    .line 612
    :try_start_36
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_52

    .line 613
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p1

    monitor-exit p2
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4f

    .line 617
    :try_start_48
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5c

    .line 620
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    return p1

    .line 615
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit p2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    throw p1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 617
    :catchall_52
    move-exception p1

    :try_start_53
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5c

    .line 607
    :cond_57
    :goto_57
    nop

    .line 620
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 607
    return v2

    .line 620
    :catchall_5c
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 628
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setEnabledExclusiveInCategory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 629
    const-string/jumbo v2, "setEnabledExclusiveInCategory"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 630
    const-string/jumbo v2, "setEnabledExclusiveInCategory"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_51

    .line 631
    if-nez p1, :cond_2b

    .line 632
    const/4 p1, 0x0

    .line 645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    return p1

    .line 635
    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_51

    .line 637
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_4c

    .line 638
    :try_start_36
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result p1

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_36 .. :try_end_42} :catchall_49

    .line 642
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    .line 645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 638
    return p1

    .line 640
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    :try_start_4b
    throw p1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 642
    :catchall_4c
    move-exception p1

    :try_start_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    .line 645
    :catchall_51
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setHighestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 679
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 680
    const-string/jumbo v2, "setHighestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_50

    .line 681
    if-nez p1, :cond_2b

    .line 682
    const/4 p1, 0x0

    .line 694
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 682
    return p1

    .line 685
    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_50

    .line 687
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_4b

    .line 688
    :try_start_36
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_48

    .line 691
    :try_start_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_50

    .line 694
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 688
    return p1

    .line 689
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 691
    :catchall_4b
    move-exception p1

    :try_start_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 694
    :catchall_50
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 702
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setLowestPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 703
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 704
    const-string/jumbo v2, "setLowestPriority"

    invoke-direct {p0, p2, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_50

    .line 705
    if-nez p1, :cond_2b

    .line 706
    const/4 p1, 0x0

    .line 718
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 706
    return p1

    .line 709
    :cond_2b
    :try_start_2b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_50

    .line 711
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_4b

    .line 712
    :try_start_36
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v4
    :try_end_41
    .catchall {:try_start_36 .. :try_end_41} :catchall_48

    .line 715
    :try_start_41
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_50

    .line 718
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    return p1

    .line 713
    :catchall_48
    move-exception p1

    :try_start_49
    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4b

    .line 715
    :catchall_4b
    move-exception p1

    :try_start_4c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 718
    :catchall_50
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 653
    const-wide/32 v0, 0x4000000

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#setPriority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 655
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V

    .line 656
    const-string/jumbo v2, "setPriority"

    invoke-direct {p0, p3, v2}, Lcom/android/server/om/OverlayManagerService$1;->handleIncomingUser(ILjava/lang/String;)I

    move-result p3

    .line 657
    if-eqz p1, :cond_56

    if-nez p2, :cond_31

    goto :goto_56

    .line 661
    :cond_31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_5b

    .line 663
    :try_start_35
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_51

    .line 664
    :try_start_3c
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v4
    :try_end_47
    .catchall {:try_start_3c .. :try_end_47} :catchall_4e

    .line 667
    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_5b

    .line 670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    return p1

    .line 665
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_51

    .line 667
    :catchall_51
    move-exception p1

    :try_start_52
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_56
    .catchall {:try_start_52 .. :try_end_56} :catchall_5b

    .line 658
    :cond_56
    :goto_56
    const/4 p1, 0x0

    .line 670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    return p1

    .line 670
    :catchall_5b
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method
