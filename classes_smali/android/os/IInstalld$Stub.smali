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

.field static final TRANSACTION_assertFsverityRootHashMatches:I = 0x23

.field static final TRANSACTION_clearAppData:I = 0x6

.field static final TRANSACTION_clearAppProfiles:I = 0x14

.field static final TRANSACTION_compileLayouts:I = 0xf

.field static final TRANSACTION_copyFiles:I = 0x2d

.field static final TRANSACTION_copySystemProfile:I = 0x13

.field static final TRANSACTION_createAppData:I = 0x3

.field static final TRANSACTION_createOatDir:I = 0x1e

.field static final TRANSACTION_createProfileSnapshot:I = 0x16

.field static final TRANSACTION_createUserData:I = 0x1

.field static final TRANSACTION_deleteOdex:I = 0x21

.field static final TRANSACTION_destroyAppData:I = 0x7

.field static final TRANSACTION_destroyAppDataSnapshot:I = 0x2b

.field static final TRANSACTION_destroyAppProfiles:I = 0x15

.field static final TRANSACTION_destroyProfileSnapshot:I = 0x17

.field static final TRANSACTION_destroyUserData:I = 0x2

.field static final TRANSACTION_dexopt:I = 0xe

.field static final TRANSACTION_dumpProfiles:I = 0x12

.field static final TRANSACTION_fixupAppData:I = 0x8

.field static final TRANSACTION_freeCache:I = 0x1c

.field static final TRANSACTION_getAppSize:I = 0x9

.field static final TRANSACTION_getExternalSize:I = 0xb

.field static final TRANSACTION_getUserSize:I = 0xa

.field static final TRANSACTION_hashSecondaryDexFile:I = 0x25

.field static final TRANSACTION_idmap:I = 0x18

.field static final TRANSACTION_installApkVerity:I = 0x22

.field static final TRANSACTION_invalidateMounts:I = 0x26

.field static final TRANSACTION_isQuotaSupported:I = 0x27

.field static final TRANSACTION_linkFile:I = 0x1f

.field static final TRANSACTION_linkNativeLibraryDirectory:I = 0x1d

.field static final TRANSACTION_markBootComplete:I = 0x1b

.field static final TRANSACTION_mergeProfiles:I = 0x11

.field static final TRANSACTION_migrateAppData:I = 0x5

.field static final TRANSACTION_migrateLegacyObbData:I = 0x2c

.field static final TRANSACTION_moveAb:I = 0x20

.field static final TRANSACTION_moveCompleteApp:I = 0xd

.field static final TRANSACTION_prepareAppProfile:I = 0x28

.field static final TRANSACTION_reconcileSecondaryDexFile:I = 0x24

.field static final TRANSACTION_removeIdmap:I = 0x19

.field static final TRANSACTION_restoreAppDataSnapshot:I = 0x2a

.field static final TRANSACTION_restoreconAppData:I = 0x4

.field static final TRANSACTION_rmPackageDir:I = 0x1a

.field static final TRANSACTION_rmdex:I = 0x10

.field static final TRANSACTION_setAppQuota:I = 0xc

.field static final TRANSACTION_snapshotAppData:I = 0x29


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 173
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 174
    const-string v0, "android.os.IInstalld"

    invoke-virtual {p0, p0, v0}, Landroid/os/IInstalld$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IInstalld;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 182
    if-nez p0, :cond_4

    .line 183
    const/4 v0, 0x0

    return-object v0

    .line 185
    :cond_4
    const-string v0, "android.os.IInstalld"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 186
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IInstalld;

    if-eqz v1, :cond_14

    .line 187
    move-object v1, v0

    check-cast v1, Landroid/os/IInstalld;

    return-object v1

    .line 189
    :cond_14
    new-instance v1, Landroid/os/IInstalld$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IInstalld$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IInstalld;
    .registers 1

    .line 1966
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IInstalld;)Z
    .registers 2
    .param p0, "impl"  # Landroid/os/IInstalld;

    .line 1959
    sget-object v0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 1960
    sput-object p0, Landroid/os/IInstalld$Stub$Proxy;->sDefaultImpl:Landroid/os/IInstalld;

    .line 1961
    const/4 v0, 0x1

    return v0

    .line 1963
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 193
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 39
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    move-object/from16 v11, p0

    move/from16 v10, p1

    move-object/from16 v9, p2

    move-object/from16 v8, p3

    const-string v15, "android.os.IInstalld"

    .line 198
    .local v15, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/16 v17, 0x1

    if-eq v10, v0, :cond_5a3

    packed-switch v10, :pswitch_data_5ac

    .line 880
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 869
    :pswitch_19  #0x2d
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 871
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->copyFiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 876
    return v17

    .line 862
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_2b  #0x2c
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->migrateLegacyObbData()V

    .line 864
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 865
    return v17

    .line 843
    :pswitch_35  #0x2b
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 847
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 849
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 851
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 853
    .local v18, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 855
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 856
    .local v20, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-wide/from16 v4, v18

    move/from16 v6, v16

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->destroyAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;IJII)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    return v17

    .line 822
    .end local v12  # "_arg0":Ljava/lang/String;
    .end local v13  # "_arg1":Ljava/lang/String;
    .end local v14  # "_arg2":I
    .end local v16  # "_arg4":I
    .end local v18  # "_arg3":J
    .end local v20  # "_arg5":I
    :pswitch_62  #0x2a
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 824
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 826
    .restart local v12  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 828
    .restart local v13  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 830
    .restart local v14  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 832
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 834
    .local v18, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 836
    .local v19, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 837
    .local v20, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move-object/from16 v4, v16

    move/from16 v5, v18

    move/from16 v6, v19

    move/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->restoreAppDataSnapshot(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;III)V

    .line 838
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    return v17

    .line 804
    .end local v12  # "_arg0":Ljava/lang/String;
    .end local v13  # "_arg1":Ljava/lang/String;
    .end local v14  # "_arg2":I
    .end local v16  # "_arg3":Ljava/lang/String;
    .end local v18  # "_arg4":I
    .end local v19  # "_arg5":I
    .end local v20  # "_arg6":I
    :pswitch_95  #0x29
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 808
    .local v6, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 810
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 812
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 814
    .local v13, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 815
    .local v14, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v12

    move v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->snapshotAppData(Ljava/lang/String;Ljava/lang/String;III)J

    move-result-wide v0

    .line 816
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    invoke-virtual {v8, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 818
    return v17

    .line 784
    .end local v0  # "_result":J
    .end local v6  # "_arg0":Ljava/lang/String;
    .end local v7  # "_arg1":Ljava/lang/String;
    .end local v12  # "_arg2":I
    .end local v13  # "_arg3":I
    .end local v14  # "_arg4":I
    :pswitch_be  #0x28
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 786
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 788
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 790
    .local v12, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 792
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 794
    .local v14, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 796
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 797
    .local v18, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->prepareAppProfile(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 798
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 800
    return v17

    .line 774
    .end local v0  # "_result":Z
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v12  # "_arg1":I
    .end local v13  # "_arg2":I
    .end local v14  # "_arg3":Ljava/lang/String;
    .end local v16  # "_arg4":Ljava/lang/String;
    .end local v18  # "_arg5":Ljava/lang/String;
    :pswitch_ee  #0x27
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->isQuotaSupported(Ljava/lang/String;)Z

    move-result v1

    .line 778
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    return v17

    .line 767
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_result":Z
    :pswitch_100  #0x26
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/os/IInstalld$Stub;->invalidateMounts()V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    return v17

    .line 749
    :pswitch_10a  #0x25
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 751
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 753
    .restart local v6  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 755
    .local v7, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 757
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 759
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 760
    .local v14, "_arg4":I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v12

    move-object v4, v13

    move v5, v14

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->hashSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)[B

    move-result-object v0

    .line 761
    .local v0, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 763
    return v17

    .line 729
    .end local v0  # "_result":[B
    .end local v6  # "_arg0":Ljava/lang/String;
    .end local v7  # "_arg1":Ljava/lang/String;
    .end local v12  # "_arg2":I
    .end local v13  # "_arg3":Ljava/lang/String;
    .end local v14  # "_arg4":I
    :pswitch_133  #0x24
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 733
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 735
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 737
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v14

    .line 739
    .local v14, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 741
    .restart local v16  # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 742
    .local v18, "_arg5":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object/from16 v5, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->reconcileSecondaryDexFile(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .line 743
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 744
    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 745
    return v17

    .line 718
    .end local v0  # "_result":Z
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v12  # "_arg1":Ljava/lang/String;
    .end local v13  # "_arg2":I
    .end local v14  # "_arg3":[Ljava/lang/String;
    .end local v16  # "_arg4":Ljava/lang/String;
    .end local v18  # "_arg5":I
    :pswitch_163  #0x23
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 722
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 723
    .local v1, "_arg1":[B
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->assertFsverityRootHashMatches(Ljava/lang/String;[B)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    return v17

    .line 705
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":[B
    :pswitch_175  #0x22
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 709
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 711
    .local v1, "_arg1":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 712
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->installApkVerity(Ljava/lang/String;Ljava/io/FileDescriptor;I)V

    .line 713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 714
    return v17

    .line 692
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/io/FileDescriptor;
    .end local v2  # "_arg2":I
    :pswitch_18b  #0x21
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 696
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 698
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 699
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->deleteOdex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    return v17

    .line 679
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_1a1  #0x20
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 683
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 685
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 686
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->moveAb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    return v17

    .line 666
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_1b7  #0x1f
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 670
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 672
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 673
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 675
    return v17

    .line 655
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_1cd  #0x1e
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 659
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 660
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->createOatDir(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    return v17

    .line 640
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_1df  #0x1d
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 644
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 646
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 648
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 649
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->linkNativeLibraryDirectory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    return v17

    .line 625
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":I
    :pswitch_1f9  #0x1c
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 629
    .restart local v7  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 631
    .local v12, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 633
    .local v18, "_arg2":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 634
    .local v14, "_arg3":I
    move-object/from16 v0, p0

    move-object v1, v7

    move-wide v2, v12

    move-wide/from16 v4, v18

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->freeCache(Ljava/lang/String;JJI)V

    .line 635
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 636
    return v17

    .line 616
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v12  # "_arg1":J
    .end local v14  # "_arg3":I
    .end local v18  # "_arg2":J
    :pswitch_21a  #0x1b
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 619
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->markBootComplete(Ljava/lang/String;)V

    .line 620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    return v17

    .line 607
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_228  #0x1a
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->rmPackageDir(Ljava/lang/String;)V

    .line 611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 612
    return v17

    .line 598
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_236  #0x19
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 601
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->removeIdmap(Ljava/lang/String;)V

    .line 602
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    return v17

    .line 585
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_244  #0x18
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 589
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 591
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 592
    .local v2, "_arg2":I
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 593
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 594
    return v17

    .line 574
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    :pswitch_25a  #0x17
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 578
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 579
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->destroyProfileSnapshot(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 581
    return v17

    .line 558
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_26c  #0x16
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 562
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 564
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 567
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createProfileSnapshot(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 568
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    return v17

    .line 549
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    .end local v4  # "_result":Z
    :pswitch_28a  #0x15
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 552
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v11, v0}, Landroid/os/IInstalld$Stub;->destroyAppProfiles(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 554
    return v17

    .line 538
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_298  #0x14
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 542
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 543
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->clearAppProfiles(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    return v17

    .line 522
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_2aa  #0x13
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 528
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 530
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 531
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->copySystemProfile(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 532
    .restart local v4  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 534
    return v17

    .line 506
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    .end local v4  # "_result":Z
    :pswitch_2c8  #0x12
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 514
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 515
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->dumpProfiles(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 516
    .restart local v4  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    return v17

    .line 492
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    .end local v4  # "_result":Z
    :pswitch_2e6  #0x11
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 496
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 499
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual {v11, v0, v1, v2}, Landroid/os/IInstalld$Stub;->mergeProfiles(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 500
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    return v17

    .line 481
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_result":Z
    :pswitch_300  #0x10
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 486
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v11, v0, v1}, Landroid/os/IInstalld$Stub;->rmdex(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    return v17

    .line 465
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_312  #0xf
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 469
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 471
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 473
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 474
    .local v3, "_arg3":I
    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->compileLayouts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    .line 475
    .restart local v4  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v8, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    return v17

    .line 426
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":I
    .end local v4  # "_result":Z
    :pswitch_330  #0xe
    invoke-virtual {v9, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 430
    .local v18, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 432
    .local v19, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 434
    .local v20, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 436
    .local v21, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 438
    .local v22, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 440
    .local v23, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 442
    .local v24, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 444
    .local v25, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 446
    .local v26, "_arg8":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .line 448
    .local v27, "_arg9":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 450
    .local v28, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_368

    move/from16 v12, v17

    goto :goto_36a

    :cond_368
    const/4 v0, 0x0

    move v12, v0

    .line 452
    .local v12, "_arg11":Z
    :goto_36a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .local v29, "_arg12":I
    move/from16 v13, v29

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .local v30, "_arg13":Ljava/lang/String;
    move-object/from16 v14, v30

    .line 456
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    move-object v7, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .local v7, "descriptor":Ljava/lang/String;
    .local v31, "_arg14":Ljava/lang/String;
    move-object/from16 v15, v31

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg15":Ljava/lang/String;
    move-object/from16 v16, v32

    .line 459
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v33, v7

    .end local v7  # "descriptor":Ljava/lang/String;
    .local v33, "descriptor":Ljava/lang/String;
    move/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v9, v26

    move-object/from16 v10, v27

    move-object/from16 v11, v28

    invoke-virtual/range {v0 .. v16}, Landroid/os/IInstalld$Stub;->dexopt(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    return v17

    .line 405
    .end local v12  # "_arg11":Z
    .end local v18  # "_arg0":Ljava/lang/String;
    .end local v19  # "_arg1":I
    .end local v20  # "_arg2":Ljava/lang/String;
    .end local v21  # "_arg3":Ljava/lang/String;
    .end local v22  # "_arg4":I
    .end local v23  # "_arg5":Ljava/lang/String;
    .end local v24  # "_arg6":I
    .end local v25  # "_arg7":Ljava/lang/String;
    .end local v26  # "_arg8":Ljava/lang/String;
    .end local v27  # "_arg9":Ljava/lang/String;
    .end local v28  # "_arg10":Ljava/lang/String;
    .end local v29  # "_arg12":I
    .end local v30  # "_arg13":Ljava/lang/String;
    .end local v31  # "_arg14":Ljava/lang/String;
    .end local v32  # "_arg15":Ljava/lang/String;
    .end local v33  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_3a4  #0xd
    move-object/from16 v33, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v33  # "descriptor":Ljava/lang/String;
    move-object/from16 v8, p2

    move-object/from16 v9, v33

    .end local v33  # "descriptor":Ljava/lang/String;
    .local v9, "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 409
    .local v10, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 411
    .local v11, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 413
    .local v12, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 415
    .local v13, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 417
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 419
    .local v15, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 420
    .local v16, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move-object v4, v13

    move v5, v14

    move-object v6, v15

    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    return v17

    .line 390
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v10  # "_arg0":Ljava/lang/String;
    .end local v11  # "_arg1":Ljava/lang/String;
    .end local v12  # "_arg2":Ljava/lang/String;
    .end local v13  # "_arg3":Ljava/lang/String;
    .end local v14  # "_arg4":I
    .end local v16  # "_arg6":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_3da  #0xc
    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 394
    .restart local v6  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 396
    .local v7, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 398
    .local v10, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 399
    .local v11, "_arg3":J
    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    move v3, v10

    move-wide v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/os/IInstalld$Stub;->setAppQuota(Ljava/lang/String;IIJ)V

    .line 400
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    return v17

    .line 374
    .end local v6  # "_arg0":Ljava/lang/String;
    .end local v7  # "_arg1":I
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v10  # "_arg2":I
    .end local v11  # "_arg3":J
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_3fc  #0xb
    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 378
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 380
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 382
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 383
    .local v3, "_arg3":[I
    move-object/from16 v10, p0

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getExternalSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 384
    .local v4, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    move-object/from16 v11, p3

    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 386
    return v17

    .line 358
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":[I
    .end local v4  # "_result":[J
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_420  #0xa
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 362
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 366
    .restart local v2  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 367
    .restart local v3  # "_arg3":[I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->getUserSize(Ljava/lang/String;II[I)[J

    move-result-object v4

    .line 368
    .restart local v4  # "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 370
    return v17

    .line 336
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":[I
    .end local v4  # "_result":[J
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_442  #0x9
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 340
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v13

    .line 342
    .local v13, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 344
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 346
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 348
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v18

    .line 350
    .local v18, "_arg5":[J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v19

    .line 351
    .local v19, "_arg6":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->getAppSize(Ljava/lang/String;[Ljava/lang/String;III[J[Ljava/lang/String;)[J

    move-result-object v0

    .line 352
    .local v0, "_result":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 354
    return v17

    .line 325
    .end local v0  # "_result":[J
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg0":Ljava/lang/String;
    .end local v13  # "_arg1":[Ljava/lang/String;
    .end local v14  # "_arg2":I
    .end local v16  # "_arg4":I
    .end local v18  # "_arg5":[J
    .end local v19  # "_arg6":[Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_47c  #0x8
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 330
    .restart local v1  # "_arg1":I
    invoke-virtual {v10, v0, v1}, Landroid/os/IInstalld$Stub;->fixupAppData(Ljava/lang/String;I)V

    .line 331
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    return v17

    .line 308
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_492  #0x7
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 314
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 316
    .local v13, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 318
    .local v14, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 319
    .local v15, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->destroyAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 320
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    return v17

    .line 291
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg1":Ljava/lang/String;
    .end local v13  # "_arg2":I
    .end local v14  # "_arg3":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_4bb  #0x6
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 295
    .restart local v7  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 297
    .restart local v12  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 299
    .restart local v13  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 301
    .restart local v14  # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 302
    .local v15, "_arg4":J
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move-wide v5, v15

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->clearAppData(Ljava/lang/String;Ljava/lang/String;IIJ)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    return v17

    .line 276
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg1":Ljava/lang/String;
    .end local v13  # "_arg2":I
    .end local v14  # "_arg3":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_4e4  #0x5
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 280
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 282
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .restart local v2  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 285
    .local v3, "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->migrateAppData(Ljava/lang/String;Ljava/lang/String;II)V

    .line 286
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    return v17

    .line 257
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_502  #0x4
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 261
    .restart local v7  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 263
    .restart local v12  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 265
    .restart local v13  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 267
    .restart local v14  # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 269
    .local v15, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 270
    .local v16, "_arg5":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move-object/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Landroid/os/IInstalld$Stub;->restoreconAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 271
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    return v17

    .line 235
    .end local v7  # "_arg0":Ljava/lang/String;
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg1":Ljava/lang/String;
    .end local v13  # "_arg2":I
    .end local v14  # "_arg3":I
    .end local v16  # "_arg5":Ljava/lang/String;
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_531  #0x3
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 239
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 241
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 243
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 245
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 247
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 249
    .local v18, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 250
    .local v19, "_arg6":I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    move-object/from16 v6, v18

    move/from16 v7, v19

    invoke-virtual/range {v0 .. v7}, Landroid/os/IInstalld$Stub;->createAppData(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;I)J

    move-result-wide v0

    .line 251
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {v11, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 253
    return v17

    .line 222
    .end local v0  # "_result":J
    .end local v9  # "descriptor":Ljava/lang/String;
    .end local v12  # "_arg0":Ljava/lang/String;
    .end local v13  # "_arg1":Ljava/lang/String;
    .end local v14  # "_arg2":I
    .end local v16  # "_arg4":I
    .end local v18  # "_arg5":Ljava/lang/String;
    .end local v19  # "_arg6":I
    .local v15, "descriptor":Ljava/lang/String;
    :pswitch_56b  #0x2
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 228
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 229
    .restart local v2  # "_arg2":I
    invoke-virtual {v10, v0, v1, v2}, Landroid/os/IInstalld$Stub;->destroyUserData(Ljava/lang/String;II)V

    .line 230
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    return v17

    .line 207
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :pswitch_585  #0x1
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 211
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 213
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 215
    .restart local v2  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 216
    .restart local v3  # "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/os/IInstalld$Stub;->createUserData(Ljava/lang/String;III)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    return v17

    .line 202
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    .end local v9  # "descriptor":Ljava/lang/String;
    .restart local v15  # "descriptor":Ljava/lang/String;
    :cond_5a3
    move-object v10, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v15

    .end local v15  # "descriptor":Ljava/lang/String;
    .restart local v9  # "descriptor":Ljava/lang/String;
    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return v17

    nop

    :pswitch_data_5ac
    .packed-switch 0x1
        :pswitch_585  #00000001
        :pswitch_56b  #00000002
        :pswitch_531  #00000003
        :pswitch_502  #00000004
        :pswitch_4e4  #00000005
        :pswitch_4bb  #00000006
        :pswitch_492  #00000007
        :pswitch_47c  #00000008
        :pswitch_442  #00000009
        :pswitch_420  #0000000a
        :pswitch_3fc  #0000000b
        :pswitch_3da  #0000000c
        :pswitch_3a4  #0000000d
        :pswitch_330  #0000000e
        :pswitch_312  #0000000f
        :pswitch_300  #00000010
        :pswitch_2e6  #00000011
        :pswitch_2c8  #00000012
        :pswitch_2aa  #00000013
        :pswitch_298  #00000014
        :pswitch_28a  #00000015
        :pswitch_26c  #00000016
        :pswitch_25a  #00000017
        :pswitch_244  #00000018
        :pswitch_236  #00000019
        :pswitch_228  #0000001a
        :pswitch_21a  #0000001b
        :pswitch_1f9  #0000001c
        :pswitch_1df  #0000001d
        :pswitch_1cd  #0000001e
        :pswitch_1b7  #0000001f
        :pswitch_1a1  #00000020
        :pswitch_18b  #00000021
        :pswitch_175  #00000022
        :pswitch_163  #00000023
        :pswitch_133  #00000024
        :pswitch_10a  #00000025
        :pswitch_100  #00000026
        :pswitch_ee  #00000027
        :pswitch_be  #00000028
        :pswitch_95  #00000029
        :pswitch_62  #0000002a
        :pswitch_35  #0000002b
        :pswitch_2b  #0000002c
        :pswitch_19  #0000002d
    .end packed-switch
.end method
