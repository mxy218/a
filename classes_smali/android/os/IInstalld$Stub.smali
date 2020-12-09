.class public abstract Landroid/os/IInstalld$Stub;
.super Landroid/os/Binder;
.source "IInstalld.java"

# interfaces
.implements Landroid/os/IInstalld;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IInstalld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IInstalld$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IInstalld"

.field static final TRANSACTION_assertFsverityRootHashMatches:I = 0x22

.field static final TRANSACTION_clearAppData:I = 0x6

.field static final TRANSACTION_clearAppProfiles:I = 0x14

.field static final TRANSACTION_compileLayouts:I = 0xf

.field static final TRANSACTION_copySystemProfile:I = 0x13

.field static final TRANSACTION_createAppData:I = 0x3

.field static final TRANSACTION_createOatDir:I = 0x1d

.field static final TRANSACTION_createProfileSnapshot:I = 0x16

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x20

.field static final TRANSACTION_destroyAppData:I = 0x7

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2a

.field static final TRANSACTION_destroyAppProfiles:I = 0x15

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x17

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0xe

.field static final TRANSACTION_dumpProfiles:I = 0x12

.field static final TRANSACTION_fixupAppData:I = 0x8

.field static final TRANSACTION_freeCache:I = 0x1b

.field static final TRANSACTION_getAppSize:I = 0x9

.field static final TRANSACTION_getExternalSize:I = 0xb

.field static final TRANSACTION_getUserSize:I = 0xa

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x24

.field static final TRANSACTION_idmap:I = 0x18

.field static final TRANSACTION_installApkVerity:I = 0x21

.field static final TRANSACTION_invalidateMounts:I = 0x25

.field static final TRANSACTION_isQuotaSupported:I = 0x26

.field static final TRANSACTION_linkFile:I = 0x1e

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x1c

.field static final TRANSACTION_mergeProfiles:I = 0x11

.field static final TRANSACTION_migrateAppData:I = 0x5

.field static final TRANSACTION_migrateLegacyObbData:I = 0x2b

.field static final TRANSACTION_moveAb:I = 0x1f

.field static final TRANSACTION_moveCompleteApp:I = 0xd

.field static final TRANSACTION_prepareAppProfile:I = 0x27

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x23

.field static final TRANSACTION_removeIdmap:I = 0x19

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x29

.field static final TRANSACTION_restoreconAppData:I = 0x4

.field static final TRANSACTION_rmPackageDir:I = 0x1a

.field static final TRANSACTION_rmdex:I = 0x10

.field static final TRANSACTION_setAppQuota:I = 0xc

.field static final TRANSACTION_snapshotAppData:I = 0x28


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 165
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 166
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3

    .line 174
    if-nez p0, :cond_4

    .line 175
    const/4 p0, 0x0

    return-object p0

    .line 177
    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 178
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_13

    .line 179
    check-cast v0, Landroid/os/IInstalld;

    return-object v0

    .line 181
    :cond_13
    new-instance v0, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IInstalld;
    .registers 1

    .line 1895
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IInstalld;)Z
    .registers 2

    .line 1888
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 1889
    sput-object p0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    .line 1890
    const/4 p0, 0x1

    return p0

    .line 1892
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 185
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v12, p3

    .line 190
    const v3, 0x5f4e5446

    const/16 v17, 0x1

    const-string v4, "android.os.IInstalld"

    if-eq v1, v3, :cond_524

    packed-switch v1, :pswitch_data_52a

    .line 852
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 845
    :pswitch_19  #0x2b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 847
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 848
    return v17

    .line 826
    :pswitch_23  #0x2a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 830
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 832
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 838
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 839
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-wide v4, v5

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    return v17

    .line 805
    :pswitch_4c  #0x29
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 807
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 820
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    return v17

    .line 787
    :pswitch_7a  #0x28
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 789
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 793
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 795
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 798
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    invoke-virtual {v12, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 801
    return v17

    .line 767
    :pswitch_a2  #0x27
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 769
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 773
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 779
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 780
    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 783
    return v17

    .line 757
    :pswitch_cf  #0x26
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 759
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 760
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v0

    .line 761
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 763
    return v17

    .line 750
    :pswitch_e1  #0x25
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    return v17

    .line 732
    :pswitch_eb  #0x24
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 738
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 743
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 744
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 745
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 746
    return v17

    .line 712
    :pswitch_113  #0x23
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 716
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 725
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 726
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 727
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 728
    return v17

    .line 701
    :pswitch_140  #0x22
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V

    .line 707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 708
    return v17

    .line 688
    :pswitch_152  #0x21
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 695
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V

    .line 696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    return v17

    .line 675
    :pswitch_168  #0x20
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 684
    return v17

    .line 662
    :pswitch_17e  #0x1f
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 669
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    return v17

    .line 649
    :pswitch_194  #0x1e
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 656
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    return v17

    .line 638
    :pswitch_1aa  #0x1d
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 645
    return v17

    .line 623
    :pswitch_1bc  #0x1c
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 629
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 631
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 633
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 634
    return v17

    .line 608
    :pswitch_1d6  #0x1b
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 614
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 617
    move-object/from16 v0, p0

    move-wide v2, v3

    move-wide v4, v5

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JJI)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    return v17

    .line 599
    :pswitch_1f5  #0x1a
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 602
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 604
    return v17

    .line 590
    :pswitch_203  #0x19
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 593
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->removeIdmap(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    return v17

    .line 577
    :pswitch_211  #0x18
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 581
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 584
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 585
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    return v17

    .line 566
    :pswitch_227  #0x17
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    return v17

    .line 550
    :pswitch_239  #0x16
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 556
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    return v17

    .line 541
    :pswitch_257  #0x15
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 544
    invoke-virtual {v0, v1}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 546
    return v17

    .line 530
    :pswitch_265  #0x14
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    return v17

    .line 514
    :pswitch_277  #0x13
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 520
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    return v17

    .line 498
    :pswitch_295  #0x12
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 502
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 506
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 507
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 509
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 510
    return v17

    .line 484
    :pswitch_2b3  #0x11
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 490
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 491
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 492
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    return v17

    .line 473
    :pswitch_2cd  #0x10
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 478
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    return v17

    .line 457
    :pswitch_2df  #0xf
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 465
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 466
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 469
    return v17

    .line 418
    :pswitch_2fd  #0xe
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 432
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 438
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_335

    move/from16 v19, v17

    goto :goto_338

    :cond_335
    const/4 v13, 0x0

    move/from16 v19, v13

    .line 444
    :goto_338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 448
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 451
    move-object/from16 v0, p0

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v18

    move/from16 v12, v19

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    return v17

    .line 397
    :pswitch_35e  #0xd
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 411
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 412
    move-object/from16 v0, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 413
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    return v17

    .line 382
    :pswitch_38c  #0xc
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 391
    move-object/from16 v0, p0

    move v2, v3

    move v3, v4

    move-wide v4, v5

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    return v17

    .line 366
    :pswitch_3ab  #0xb
    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 375
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 376
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    move-object/from16 v8, p3

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 378
    return v17

    .line 350
    :pswitch_3cb  #0xa
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 354
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 359
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v0

    .line 360
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 362
    return v17

    .line 328
    :pswitch_3ea  #0x9
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v7

    .line 342
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 343
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 344
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 346
    return v17

    .line 317
    :pswitch_41d  #0x8
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    return v17

    .line 300
    :pswitch_430  #0x7
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 311
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 312
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    return v17

    .line 283
    :pswitch_455  #0x6
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 294
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move-wide v5, v6

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 295
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    return v17

    .line 268
    :pswitch_47a  #0x5
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    return v17

    .line 249
    :pswitch_495  #0x4
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 262
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 263
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    return v17

    .line 227
    :pswitch_4bf  #0x3
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 239
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 242
    move-object/from16 v0, p0

    move-object v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v0

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 245
    return v17

    .line 214
    :pswitch_4f2  #0x2
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 220
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 221
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    return v17

    .line 199
    :pswitch_509  #0x1
    move-object v8, v12

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 207
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 208
    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    return v17

    .line 194
    :cond_524
    move-object v8, v12

    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    return v17

    nop

    :pswitch_data_52a
    .packed-switch 0x1
        :pswitch_509  #00000001
        :pswitch_4f2  #00000002
        :pswitch_4bf  #00000003
        :pswitch_495  #00000004
        :pswitch_47a  #00000005
        :pswitch_455  #00000006
        :pswitch_430  #00000007
        :pswitch_41d  #00000008
        :pswitch_3ea  #00000009
        :pswitch_3cb  #0000000a
        :pswitch_3ab  #0000000b
        :pswitch_38c  #0000000c
        :pswitch_35e  #0000000d
        :pswitch_2fd  #0000000e
        :pswitch_2df  #0000000f
        :pswitch_2cd  #00000010
        :pswitch_2b3  #00000011
        :pswitch_295  #00000012
        :pswitch_277  #00000013
        :pswitch_265  #00000014
        :pswitch_257  #00000015
        :pswitch_239  #00000016
        :pswitch_227  #00000017
        :pswitch_211  #00000018
        :pswitch_203  #00000019
        :pswitch_1f5  #0000001a
        :pswitch_1d6  #0000001b
        :pswitch_1bc  #0000001c
        :pswitch_1aa  #0000001d
        :pswitch_194  #0000001e
        :pswitch_17e  #0000001f
        :pswitch_168  #00000020
        :pswitch_152  #00000021
        :pswitch_140  #00000022
        :pswitch_113  #00000023
        :pswitch_eb  #00000024
        :pswitch_e1  #00000025
        :pswitch_cf  #00000026
        :pswitch_a2  #00000027
        :pswitch_7a  #00000028
        :pswitch_4c  #00000029
        :pswitch_23  #0000002a
        :pswitch_19  #0000002b
    .end packed-switch
.end method
