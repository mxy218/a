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
    .param p1, "this$0"  # Lcom/android/server/om/OverlayManagerService;

    .line 524
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/om/IOverlayManager$Stub;-><init>()V

    return-void
.end method

.method private enforceChangeOverlayPackagesPermission(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"  # Ljava/lang/String;

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
    .param p1, "message"  # Ljava/lang/String;

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
    .param p1, "userId"  # I
    .param p2, "message"  # Ljava/lang/String;

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

    move-result v0

    return v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 753
    new-instance v0, Lcom/android/server/om/DumpState;

    invoke-direct {v0}, Lcom/android/server/om/DumpState;-><init>()V

    .line 754
    .local v0, "dumpState":Lcom/android/server/om/DumpState;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/om/DumpState;->setUserId(I)V

    .line 756
    const/4 v1, 0x0

    .line 757
    .local v1, "opti":I
    :goto_11
    array-length v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_b4

    .line 758
    aget-object v2, p3, v1

    .line 759
    .local v2, "opt":Ljava/lang/String;
    if-eqz v2, :cond_b4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_2a

    .line 760
    goto/16 :goto_b4

    .line 762
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    .line 764
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 765
    const-string v3, "dump [-h] [--verbose] [--user USER_ID] [[FIELD] PACKAGE]"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 766
    const-string v3, "  Print debugging information about the overlay manager."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 767
    const-string v3, "  With optional parameter PACKAGE, limit output to the specified"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 768
    const-string v3, "  package. With optional parameter FIELD, limit output to"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    const-string v3, "  the value of that SettingsItem field. Field names are"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 770
    const-string v3, "  case insensitive and out.println the m prefix can be omitted,"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 771
    const-string v3, "  so the following are equivalent: mState, mstate, State, state."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    return-void

    .line 773
    :cond_58
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 774
    add-int/lit8 v1, v1, 0x1

    .line 775
    array-length v3, p3

    if-lt v1, v3, :cond_6b

    .line 776
    const-string v3, "Error: user missing argument"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    return-void

    .line 780
    :cond_6b
    :try_start_6b
    aget-object v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/om/DumpState;->setUserId(I)V
    :try_end_74
    .catch Ljava/lang/NumberFormatException; {:try_start_6b .. :try_end_74} :catch_75

    .line 784
    goto :goto_b2

    .line 781
    :catch_75
    move-exception v3

    .line 782
    .local v3, "e":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: user argument is not a number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p3, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    return-void

    .line 785
    .end local v3  # "e":Ljava/lang/NumberFormatException;
    :cond_8d
    const-string v3, "--verbose"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 786
    invoke-virtual {v0, v4}, Lcom/android/server/om/DumpState;->setVerbose(Z)V

    goto :goto_b2

    .line 788
    :cond_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown argument: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; use -h for help"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 790
    .end local v2  # "opt":Ljava/lang/String;
    :goto_b2
    goto/16 :goto_11

    .line 791
    :cond_b4
    :goto_b4
    array-length v2, p3

    if-ge v1, v2, :cond_13d

    .line 792
    aget-object v2, p3, v1

    .line 793
    .local v2, "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 794
    const/4 v5, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_176

    :cond_c3
    goto/16 :goto_132

    :sswitch_c5
    const-string v3, "basecodepath"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x4

    goto :goto_133

    :sswitch_cf
    const-string/jumbo v4, "packagename"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c3

    goto :goto_133

    :sswitch_d9
    const-string/jumbo v3, "isstatic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x7

    goto :goto_133

    :sswitch_e4
    const-string/jumbo v3, "isenabled"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x6

    goto :goto_133

    :sswitch_ef
    const-string/jumbo v3, "state"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x5

    goto :goto_133

    :sswitch_fa
    const-string v3, "category"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/16 v3, 0x9

    goto :goto_133

    :sswitch_105
    const-string/jumbo v3, "userid"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    move v3, v4

    goto :goto_133

    :sswitch_110
    const-string/jumbo v3, "priority"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/16 v3, 0x8

    goto :goto_133

    :sswitch_11c
    const-string/jumbo v3, "targetpackagename"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x2

    goto :goto_133

    :sswitch_127
    const-string/jumbo v3, "targetoverlayablename"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c3

    const/4 v3, 0x3

    goto :goto_133

    :goto_132
    move v3, v5

    :goto_133
    packed-switch v3, :pswitch_data_1a0

    .line 808
    invoke-virtual {v0, v2}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    goto :goto_13d

    .line 805
    :pswitch_13a  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9
    invoke-virtual {v0, v2}, Lcom/android/server/om/DumpState;->setField(Ljava/lang/String;)V

    .line 812
    .end local v2  # "arg":Ljava/lang/String;
    :cond_13d
    :goto_13d
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_14d

    array-length v2, p3

    if-ge v1, v2, :cond_14d

    .line 813
    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Lcom/android/server/om/DumpState;->setPackageName(Ljava/lang/String;)V

    .line 814
    add-int/lit8 v1, v1, 0x1

    .line 817
    :cond_14d
    const-string v2, "dump"

    invoke-direct {p0, v2}, Lcom/android/server/om/OverlayManagerService$1;->enforceDumpPermission(Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 819
    :try_start_159
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 820
    invoke-virtual {v0}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_171

    .line 821
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v3

    invoke-virtual {v3, p2, v0}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 823
    :cond_171
    monitor-exit v2

    .line 824
    return-void

    .line 823
    :catchall_173
    move-exception v3

    monitor-exit v2
    :try_end_175
    .catchall {:try_start_159 .. :try_end_175} :catchall_173

    throw v3

    :sswitch_data_176
    .sparse-switch
        -0x685a1e7c -> :sswitch_127
        -0x4a674a60 -> :sswitch_11c
        -0x4577865c -> :sswitch_110
        -0x31d4cdda -> :sswitch_105
        0x302bcfe -> :sswitch_fa
        0x68ac491 -> :sswitch_ef
        0x1a483ad7 -> :sswitch_e4
        0x2995d418 -> :sswitch_d9
        0x36391bd1 -> :sswitch_cf
        0x64f6f963 -> :sswitch_c5
    .end sparse-switch

    :pswitch_data_1a0
    .packed-switch 0x0
        :pswitch_13a  #00000000
        :pswitch_13a  #00000001
        :pswitch_13a  #00000002
        :pswitch_13a  #00000003
        :pswitch_13a  #00000004
        :pswitch_13a  #00000005
        :pswitch_13a  #00000006
        :pswitch_13a  #00000007
        :pswitch_13a  #00000008
        :pswitch_13a  #00000009
    .end packed-switch
.end method

.method public getAllOverlays(I)Ljava/util/Map;
    .registers 6
    .param p1, "userId"  # I
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

    move-result v2

    move p1, v2

    .line 531
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_37

    .line 532
    :try_start_25
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlaysForUser(I)Ljava/util/Map;

    move-result-object v3

    monitor-exit v2
    :try_end_30
    .catchall {:try_start_25 .. :try_end_30} :catchall_34

    .line 535
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 532
    return-object v3

    .line 533
    :catchall_34
    move-exception v3

    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "userId":I
    :try_start_36
    throw v3
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_37

    .line 535
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "userId":I
    :catchall_37
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
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
    .local v2, "ident":J
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

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    :try_start_33
    throw v5
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_34

    .line 735
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_34
    move-exception v4

    :try_start_35
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    throw v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .line 738
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    :catchall_39
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result v2
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_3e

    move p2, v2

    .line 563
    if-nez p1, :cond_25

    .line 564
    const/4 v2, 0x0

    .line 571
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 564
    return-object v2

    .line 567
    :cond_25
    :try_start_25
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3e

    .line 568
    :try_start_2c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_3b

    .line 571
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 568
    return-object v3

    .line 569
    :catchall_3b
    move-exception v3

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_3d
    throw v3
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3e

    .line 571
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result v2

    move p2, v2

    .line 545
    if-nez p1, :cond_28

    .line 546
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_41

    .line 553
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    return-object v2

    .line 549
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v2}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_41

    .line 550
    :try_start_2f
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v3}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3e

    .line 553
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 550
    return-object v3

    .line 551
    :catchall_3e
    move-exception v3

    :try_start_3f
    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "targetPackageName":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_40
    throw v3
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_41

    .line 553
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "targetPackageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_41
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .param p1, "in"  # Ljava/io/FileDescriptor;
    .param p2, "out"  # Ljava/io/FileDescriptor;
    .param p3, "err"  # Ljava/io/FileDescriptor;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "callback"  # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"  # Landroid/os/ResultReceiver;

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
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .param p3, "userId"  # I
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

    move-result v2
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_59

    move p3, v2

    .line 582
    if-nez p1, :cond_34

    .line 583
    const/4 v2, 0x0

    .line 595
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    return v2

    .line 586
    :cond_34
    :try_start_34
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_59

    .line 588
    .local v2, "ident":J
    :try_start_38
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_54

    .line 589
    :try_start_3f
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v5

    monitor-exit v4
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_51

    .line 592
    :try_start_4a
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_59

    .line 595
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 589
    return v5

    .line 590
    :catchall_51
    move-exception v5

    :try_start_52
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "enable":Z
    .end local p3  # "userId":I
    :try_start_53
    throw v5
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    .line 592
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "enable":Z
    .restart local p3  # "userId":I
    :catchall_54
    move-exception v4

    :try_start_55
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "enable":Z
    .end local p3  # "userId":I
    throw v4
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .line 595
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "enable":Z
    .restart local p3  # "userId":I
    :catchall_59
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 11
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .param p3, "userId"  # I
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

    move-result v2

    move p3, v2

    .line 606
    const/4 v2, 0x0

    if-eqz p1, :cond_58

    if-nez p2, :cond_33

    goto :goto_58

    .line 610
    :cond_33
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_5d

    .line 612
    .local v3, "ident":J
    :try_start_37
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_53

    .line 613
    :try_start_3e
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v2

    monitor-exit v5
    :try_end_49
    .catchall {:try_start_3e .. :try_end_49} :catchall_50

    .line 617
    :try_start_49
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_5d

    .line 620
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 613
    return v2

    .line 615
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v3  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "enable":Z
    .end local p3  # "userId":I
    :try_start_52
    throw v2
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 617
    .restart local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "enable":Z
    .restart local p3  # "userId":I
    :catchall_53
    move-exception v2

    :try_start_54
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "enable":Z
    .end local p3  # "userId":I
    throw v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_5d

    .line 607
    .end local v3  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "enable":Z
    .restart local p3  # "userId":I
    :cond_58
    :goto_58
    nop

    .line 620
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 607
    return v2

    .line 620
    :catchall_5d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setEnabledExclusiveInCategory(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_52

    move p2, v2

    .line 631
    if-nez p1, :cond_2c

    .line 632
    const/4 v2, 0x0

    .line 645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 632
    return v2

    .line 635
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_52

    .line 637
    .local v2, "ident":J
    :try_start_30
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_4d

    .line 638
    :try_start_37
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, p1, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v5

    monitor-exit v4
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_4a

    .line 642
    :try_start_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_52

    .line 645
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 638
    return v5

    .line 640
    :catchall_4a
    move-exception v5

    :try_start_4b
    monitor-exit v4
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_4c
    throw v5
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4d

    .line 642
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_4d
    move-exception v4

    :try_start_4e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    throw v4
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_52

    .line 645
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_52
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setHighestPriority(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_51

    move p2, v2

    .line 681
    if-nez p1, :cond_2c

    .line 682
    const/4 v2, 0x0

    .line 694
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 682
    return v2

    .line 685
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_51

    .line 687
    .local v2, "ident":J
    :try_start_30
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_4c

    .line 688
    :try_start_37
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v5

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_49

    .line 691
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    .line 694
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 688
    return v5

    .line 689
    :catchall_49
    move-exception v5

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_4b
    throw v5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 691
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    throw v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    .line 694
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setLowestPriority(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result v2
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_51

    move p2, v2

    .line 705
    if-nez p1, :cond_2c

    .line 706
    const/4 v2, 0x0

    .line 718
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 706
    return v2

    .line 709
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_30
    .catchall {:try_start_2c .. :try_end_30} :catchall_51

    .line 711
    .local v2, "ident":J
    :try_start_30
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_4c

    .line 712
    :try_start_37
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v5

    monitor-exit v4
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_49

    .line 715
    :try_start_42
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_51

    .line 718
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 712
    return v5

    .line 713
    :catchall_49
    move-exception v5

    :try_start_4a
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    :try_start_4b
    throw v5
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4c

    .line 715
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_4c
    move-exception v4

    :try_start_4d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "userId":I
    throw v4
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_51

    .line 718
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "userId":I
    :catchall_51
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "parentPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
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

    move-result v2

    move p3, v2

    .line 657
    if-eqz p1, :cond_57

    if-nez p2, :cond_32

    goto :goto_57

    .line 661
    :cond_32
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_5c

    .line 663
    .local v2, "ident":J
    :try_start_36
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v4}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_52

    .line 664
    :try_start_3d
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$1;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    monitor-exit v4
    :try_end_48
    .catchall {:try_start_3d .. :try_end_48} :catchall_4f

    .line 667
    :try_start_48
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_5c

    .line 670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 664
    return v5

    .line 665
    :catchall_4f
    move-exception v5

    :try_start_50
    monitor-exit v4
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    .end local v2  # "ident":J
    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "parentPackageName":Ljava/lang/String;
    .end local p3  # "userId":I
    :try_start_51
    throw v5
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_52

    .line 667
    .restart local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "parentPackageName":Ljava/lang/String;
    .restart local p3  # "userId":I
    :catchall_52
    move-exception v4

    :try_start_53
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "parentPackageName":Ljava/lang/String;
    .end local p3  # "userId":I
    throw v4
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_5c

    .line 658
    .end local v2  # "ident":J
    .restart local p0  # "this":Lcom/android/server/om/OverlayManagerService$1;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "parentPackageName":Ljava/lang/String;
    .restart local p3  # "userId":I
    :cond_57
    :goto_57
    const/4 v2, 0x0

    .line 670
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 658
    return v2

    .line 670
    :catchall_5c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method
