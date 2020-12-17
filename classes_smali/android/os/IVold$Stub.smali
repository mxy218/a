.class public abstract Landroid/os/IVold$Stub;
.super Landroid/os/Binder;
.source "IVold.java"

# interfaces
.implements Landroid/os/IVold;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVold;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVold$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVold"

.field static final TRANSACTION_abortChanges:I = 0x3c

.field static final TRANSACTION_abortIdleMaint:I = 0x1a

.field static final TRANSACTION_addAppIds:I = 0x9

.field static final TRANSACTION_addSandboxIds:I = 0xa

.field static final TRANSACTION_addUserKeyAuth:I = 0x30

.field static final TRANSACTION_benchmark:I = 0x11

.field static final TRANSACTION_checkEncryption:I = 0x12

.field static final TRANSACTION_clearUserKeyAuth:I = 0x31

.field static final TRANSACTION_commitChanges:I = 0x3d

.field static final TRANSACTION_createObb:I = 0x16

.field static final TRANSACTION_createStubVolume:I = 0x45

.field static final TRANSACTION_createUserKey:I = 0x2e

.field static final TRANSACTION_destroyObb:I = 0x17

.field static final TRANSACTION_destroySandboxForApp:I = 0x38

.field static final TRANSACTION_destroyStubVolume:I = 0x46

.field static final TRANSACTION_destroyUserKey:I = 0x2f

.field static final TRANSACTION_destroyUserStorage:I = 0x36

.field static final TRANSACTION_encryptFstab:I = 0x2d

.field static final TRANSACTION_fbeEnable:I = 0x28

.field static final TRANSACTION_fdeChangePassword:I = 0x21

.field static final TRANSACTION_fdeCheckPassword:I = 0x1d

.field static final TRANSACTION_fdeClearPassword:I = 0x27

.field static final TRANSACTION_fdeComplete:I = 0x1f

.field static final TRANSACTION_fdeEnable:I = 0x20

.field static final TRANSACTION_fdeGetField:I = 0x23

.field static final TRANSACTION_fdeGetPassword:I = 0x26

.field static final TRANSACTION_fdeGetPasswordType:I = 0x25

.field static final TRANSACTION_fdeRestart:I = 0x1e

.field static final TRANSACTION_fdeSetField:I = 0x24

.field static final TRANSACTION_fdeVerifyPassword:I = 0x22

.field static final TRANSACTION_fixateNewestUserKeyAuth:I = 0x32

.field static final TRANSACTION_forgetPartition:I = 0xd

.field static final TRANSACTION_format:I = 0x10

.field static final TRANSACTION_fstrim:I = 0x18

.field static final TRANSACTION_initUser0:I = 0x2a

.field static final TRANSACTION_isConvertibleToFbe:I = 0x2b

.field static final TRANSACTION_lockUserKey:I = 0x34

.field static final TRANSACTION_markBootAttempt:I = 0x41

.field static final TRANSACTION_mkdirs:I = 0x15

.field static final TRANSACTION_monitor:I = 0x2

.field static final TRANSACTION_mount:I = 0xe

.field static final TRANSACTION_mountAppFuse:I = 0x1b

.field static final TRANSACTION_mountDefaultEncrypted:I = 0x29

.field static final TRANSACTION_mountFstab:I = 0x2c

.field static final TRANSACTION_moveStorage:I = 0x13

.field static final TRANSACTION_needsCheckpoint:I = 0x3a

.field static final TRANSACTION_needsRollback:I = 0x3b

.field static final TRANSACTION_onSecureKeyguardStateChanged:I = 0xb

.field static final TRANSACTION_onUserAdded:I = 0x5

.field static final TRANSACTION_onUserRemoved:I = 0x6

.field static final TRANSACTION_onUserStarted:I = 0x7

.field static final TRANSACTION_onUserStopped:I = 0x8

.field static final TRANSACTION_openAppFuseFile:I = 0x47

.field static final TRANSACTION_partition:I = 0xc

.field static final TRANSACTION_prepareCheckpoint:I = 0x3e

.field static final TRANSACTION_prepareSandboxForApp:I = 0x37

.field static final TRANSACTION_prepareUserStorage:I = 0x35

.field static final TRANSACTION_remountUid:I = 0x14

.field static final TRANSACTION_reset:I = 0x3

.field static final TRANSACTION_restoreCheckpoint:I = 0x3f

.field static final TRANSACTION_restoreCheckpointPart:I = 0x40

.field static final TRANSACTION_runIdleMaint:I = 0x19

.field static final TRANSACTION_setListener:I = 0x1

.field static final TRANSACTION_shutdown:I = 0x4

.field static final TRANSACTION_startCheckpoint:I = 0x39

.field static final TRANSACTION_supportsBlockCheckpoint:I = 0x43

.field static final TRANSACTION_supportsCheckpoint:I = 0x42

.field static final TRANSACTION_supportsFileCheckpoint:I = 0x44

.field static final TRANSACTION_unlockUserKey:I = 0x33

.field static final TRANSACTION_unmount:I = 0xf

.field static final TRANSACTION_unmountAppFuse:I = 0x1c


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 249
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 250
    const-string v0, "android.os.IVold"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVold$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVold;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 258
    if-nez p0, :cond_4

    .line 259
    const/4 v0, 0x0

    return-object v0

    .line 261
    :cond_4
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 262
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_14

    .line 263
    move-object v1, v0

    check-cast v1, Landroid/os/IVold;

    return-object v1

    .line 265
    :cond_14
    new-instance v1, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/os/IVold;
    .registers 1

    .line 2518
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVold;)Z
    .registers 2
    .param p0, "impl"  # Landroid/os/IVold;

    .line 2511
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2512
    sput-object p0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    .line 2513
    const/4 v0, 0x1

    return v0

    .line 2515
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 269
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 22
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.os.IVold"

    .line 274
    .local v10, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v11, 0x1

    if-eq v7, v0, :cond_4e8

    const/4 v0, 0x0

    packed-switch v7, :pswitch_data_4ec

    .line 1006
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 990
    :pswitch_19  #0x47
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 994
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 996
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 998
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 999
    .local v3, "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object v4

    .line 1000
    .local v4, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1002
    return v11

    .line 981
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    .end local v4  # "_result":Ljava/io/FileDescriptor;
    :pswitch_37  #0x46
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 985
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    return v11

    .line 963
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_45  #0x45
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 967
    .local v12, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 969
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 971
    .local v14, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 973
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 974
    .local v16, "_arg4":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 975
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    return v11

    .line 955
    .end local v0  # "_result":Ljava/lang/String;
    .end local v12  # "_arg0":Ljava/lang/String;
    .end local v13  # "_arg1":Ljava/lang/String;
    .end local v14  # "_arg2":Ljava/lang/String;
    .end local v15  # "_arg3":Ljava/lang/String;
    .end local v16  # "_arg4":Ljava/lang/String;
    :pswitch_6f  #0x44
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result v0

    .line 957
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    return v11

    .line 947
    .end local v0  # "_result":Z
    :pswitch_7d  #0x43
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result v0

    .line 949
    .restart local v0  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    return v11

    .line 939
    .end local v0  # "_result":Z
    :pswitch_8b  #0x42
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result v0

    .line 941
    .restart local v0  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    return v11

    .line 932
    .end local v0  # "_result":Z
    :pswitch_99  #0x41
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    return v11

    .line 921
    :pswitch_a3  #0x40
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 926
    .restart local v1  # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 927
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    return v11

    .line 912
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    :pswitch_b5  #0x3f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 915
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 916
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    return v11

    .line 905
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_c3  #0x3e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 907
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    return v11

    .line 898
    :pswitch_cd  #0x3d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 900
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    return v11

    .line 887
    :pswitch_d7  #0x3c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 891
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_e5

    move v0, v11

    .line 892
    .local v0, "_arg1":Z
    :cond_e5
    invoke-virtual {v6, v1, v0}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    return v11

    .line 879
    .end local v0  # "_arg1":Z
    .end local v1  # "_arg0":Ljava/lang/String;
    :pswitch_ec  #0x3b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result v0

    .line 881
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    return v11

    .line 871
    .end local v0  # "_result":Z
    :pswitch_fa  #0x3a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result v0

    .line 873
    .restart local v0  # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    return v11

    .line 862
    .end local v0  # "_result":Z
    :pswitch_108  #0x39
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 865
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 866
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    return v11

    .line 849
    .end local v0  # "_arg0":I
    :pswitch_116  #0x38
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 856
    .restart local v2  # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 857
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    return v11

    .line 834
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    :pswitch_12c  #0x37
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 838
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 840
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 842
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 843
    .restart local v3  # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 844
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    return v11

    .line 821
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":I
    :pswitch_146  #0x36
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 825
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 827
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 828
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 829
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    return v11

    .line 806
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    :pswitch_15c  #0x35
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 810
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 812
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 814
    .restart local v2  # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 815
    .restart local v3  # "_arg3":I
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 816
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    return v11

    .line 797
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    .end local v3  # "_arg3":I
    :pswitch_176  #0x34
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 800
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    return v11

    .line 782
    .end local v0  # "_arg0":I
    :pswitch_184  #0x33
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 786
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 788
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 790
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    return v11

    .line 773
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_19e  #0x32
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 776
    .restart local v0  # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 777
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    return v11

    .line 758
    .end local v0  # "_arg0":I
    :pswitch_1ac  #0x31
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 762
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 764
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 766
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 767
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    return v11

    .line 743
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_1c6  #0x30
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 747
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 749
    .restart local v1  # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 751
    .restart local v2  # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 752
    .restart local v3  # "_arg3":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    return v11

    .line 734
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":Ljava/lang/String;
    .end local v3  # "_arg3":Ljava/lang/String;
    :pswitch_1e0  #0x2f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 737
    .restart local v0  # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    return v11

    .line 721
    .end local v0  # "_arg0":I
    :pswitch_1ee  #0x2e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 725
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 727
    .local v2, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_200

    move v0, v11

    .line 728
    .local v0, "_arg2":Z
    :cond_200
    invoke-virtual {v6, v1, v2, v0}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    return v11

    .line 710
    .end local v0  # "_arg2":Z
    .end local v1  # "_arg0":I
    .end local v2  # "_arg1":I
    :pswitch_207  #0x2d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    return v11

    .line 699
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_219  #0x2c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 703
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 704
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    return v11

    .line 691
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_22b  #0x2b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->isConvertibleToFbe()Z

    move-result v0

    .line 693
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    return v11

    .line 684
    .end local v0  # "_result":Z
    :pswitch_239  #0x2a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 686
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    return v11

    .line 677
    :pswitch_243  #0x29
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->mountDefaultEncrypted()V

    .line 679
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    return v11

    .line 670
    :pswitch_24d  #0x28
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    return v11

    .line 663
    :pswitch_257  #0x27
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeClearPassword()V

    .line 665
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    return v11

    .line 655
    :pswitch_261  #0x26
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeGetPassword()Ljava/lang/String;

    move-result-object v0

    .line 657
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    return v11

    .line 647
    .end local v0  # "_result":Ljava/lang/String;
    :pswitch_26f  #0x25
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeGetPasswordType()I

    move-result v0

    .line 649
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    return v11

    .line 636
    .end local v0  # "_result":I
    :pswitch_27d  #0x24
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 640
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 641
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    return v11

    .line 626
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_28f  #0x23
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 630
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    return v11

    .line 617
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_result":Ljava/lang/String;
    :pswitch_2a1  #0x22
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->fdeVerifyPassword(Ljava/lang/String;)V

    .line 621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    return v11

    .line 604
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_2af  #0x21
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 608
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    return v11

    .line 591
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Ljava/lang/String;
    :pswitch_2c5  #0x20
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 595
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 597
    .restart local v1  # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 598
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->fdeEnable(ILjava/lang/String;I)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    return v11

    .line 583
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    :pswitch_2db  #0x1f
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeComplete()I

    move-result v0

    .line 585
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    return v11

    .line 576
    .end local v0  # "_result":I
    :pswitch_2e9  #0x1e
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->fdeRestart()V

    .line 578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v11

    .line 567
    :pswitch_2f3  #0x1d
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 570
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->fdeCheckPassword(Ljava/lang/String;)V

    .line 571
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    return v11

    .line 556
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_301  #0x1c
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 560
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 561
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    return v11

    .line 544
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    :pswitch_313  #0x1b
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 548
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 549
    .restart local v1  # "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object v2

    .line 550
    .local v2, "_result":Ljava/io/FileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 552
    return v11

    .line 535
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    .end local v2  # "_result":Ljava/io/FileDescriptor;
    :pswitch_329  #0x1a
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 538
    .local v0, "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    return v11

    .line 526
    .end local v0  # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_33b  #0x19
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v0

    .line 529
    .restart local v0  # "_arg0":Landroid/os/IVoldTaskListener;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->runIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    return v11

    .line 515
    .end local v0  # "_arg0":Landroid/os/IVoldTaskListener;
    :pswitch_34d  #0x18
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 519
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 520
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    return v11

    .line 506
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_363  #0x17
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    return v11

    .line 492
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_371  #0x16
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 496
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 498
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 499
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 500
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    return v11

    .line 483
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":I
    .end local v3  # "_result":Ljava/lang/String;
    :pswitch_38b  #0x15
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 486
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->mkdirs(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    return v11

    .line 472
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_399  #0x14
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 478
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    return v11

    .line 459
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    :pswitch_3ab  #0x13
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 463
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v2

    .line 466
    .local v2, "_arg2":Landroid/os/IVoldTaskListener;
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    return v11

    .line 450
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    .end local v2  # "_arg2":Landroid/os/IVoldTaskListener;
    :pswitch_3c5  #0x12
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 453
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->checkEncryption(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v11

    .line 439
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_3d3  #0x11
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 443
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object v1

    .line 444
    .local v1, "_arg1":Landroid/os/IVoldTaskListener;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 445
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    return v11

    .line 428
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Landroid/os/IVoldTaskListener;
    :pswitch_3e9  #0x10
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 432
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    return v11

    .line 419
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_3fb  #0xf
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 422
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 423
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v11

    .line 406
    .end local v0  # "_arg0":Ljava/lang/String;
    :pswitch_409  #0xe
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 412
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 413
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;II)V

    .line 414
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    return v11

    .line 395
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    :pswitch_41f  #0xd
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 399
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 400
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    return v11

    .line 382
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":Ljava/lang/String;
    :pswitch_431  #0xc
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 386
    .restart local v0  # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 388
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .restart local v2  # "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 390
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v11

    .line 373
    .end local v0  # "_arg0":Ljava/lang/String;
    .end local v1  # "_arg1":I
    .end local v2  # "_arg2":I
    :pswitch_447  #0xb
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_451

    move v0, v11

    .line 376
    .local v0, "_arg0":Z
    :cond_451
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 377
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    return v11

    .line 362
    .end local v0  # "_arg0":Z
    :pswitch_458  #0xa
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 366
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 367
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    return v11

    .line 351
    .end local v0  # "_arg0":[I
    .end local v1  # "_arg1":[Ljava/lang/String;
    :pswitch_46a  #0x9
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 356
    .local v1, "_arg1":[I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    return v11

    .line 342
    .end local v0  # "_arg0":[Ljava/lang/String;
    .end local v1  # "_arg1":[I
    :pswitch_47c  #0x8
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 345
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 346
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    return v11

    .line 333
    .end local v0  # "_arg0":I
    :pswitch_48a  #0x7
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .restart local v0  # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 337
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    return v11

    .line 324
    .end local v0  # "_arg0":I
    :pswitch_498  #0x6
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .restart local v0  # "_arg0":I
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 328
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    return v11

    .line 313
    .end local v0  # "_arg0":I
    :pswitch_4a6  #0x5
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .restart local v0  # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 318
    .local v1, "_arg1":I
    invoke-virtual {v6, v0, v1}, Landroid/os/IVold$Stub;->onUserAdded(II)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    return v11

    .line 306
    .end local v0  # "_arg0":I
    .end local v1  # "_arg1":I
    :pswitch_4b8  #0x4
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 308
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v11

    .line 299
    :pswitch_4c2  #0x3
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->reset()V

    .line 301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v11

    .line 292
    :pswitch_4cc  #0x2
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p0 .. p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v11

    .line 283
    :pswitch_4d6  #0x1
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object v0

    .line 286
    .local v0, "_arg0":Landroid/os/IVoldListener;
    invoke-virtual {v6, v0}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v11

    .line 278
    .end local v0  # "_arg0":Landroid/os/IVoldListener;
    :cond_4e8
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return v11

    :pswitch_data_4ec
    .packed-switch 0x1
        :pswitch_4d6  #00000001
        :pswitch_4cc  #00000002
        :pswitch_4c2  #00000003
        :pswitch_4b8  #00000004
        :pswitch_4a6  #00000005
        :pswitch_498  #00000006
        :pswitch_48a  #00000007
        :pswitch_47c  #00000008
        :pswitch_46a  #00000009
        :pswitch_458  #0000000a
        :pswitch_447  #0000000b
        :pswitch_431  #0000000c
        :pswitch_41f  #0000000d
        :pswitch_409  #0000000e
        :pswitch_3fb  #0000000f
        :pswitch_3e9  #00000010
        :pswitch_3d3  #00000011
        :pswitch_3c5  #00000012
        :pswitch_3ab  #00000013
        :pswitch_399  #00000014
        :pswitch_38b  #00000015
        :pswitch_371  #00000016
        :pswitch_363  #00000017
        :pswitch_34d  #00000018
        :pswitch_33b  #00000019
        :pswitch_329  #0000001a
        :pswitch_313  #0000001b
        :pswitch_301  #0000001c
        :pswitch_2f3  #0000001d
        :pswitch_2e9  #0000001e
        :pswitch_2db  #0000001f
        :pswitch_2c5  #00000020
        :pswitch_2af  #00000021
        :pswitch_2a1  #00000022
        :pswitch_28f  #00000023
        :pswitch_27d  #00000024
        :pswitch_26f  #00000025
        :pswitch_261  #00000026
        :pswitch_257  #00000027
        :pswitch_24d  #00000028
        :pswitch_243  #00000029
        :pswitch_239  #0000002a
        :pswitch_22b  #0000002b
        :pswitch_219  #0000002c
        :pswitch_207  #0000002d
        :pswitch_1ee  #0000002e
        :pswitch_1e0  #0000002f
        :pswitch_1c6  #00000030
        :pswitch_1ac  #00000031
        :pswitch_19e  #00000032
        :pswitch_184  #00000033
        :pswitch_176  #00000034
        :pswitch_15c  #00000035
        :pswitch_146  #00000036
        :pswitch_12c  #00000037
        :pswitch_116  #00000038
        :pswitch_108  #00000039
        :pswitch_fa  #0000003a
        :pswitch_ec  #0000003b
        :pswitch_d7  #0000003c
        :pswitch_cd  #0000003d
        :pswitch_c3  #0000003e
        :pswitch_b5  #0000003f
        :pswitch_a3  #00000040
        :pswitch_99  #00000041
        :pswitch_8b  #00000042
        :pswitch_7d  #00000043
        :pswitch_6f  #00000044
        :pswitch_45  #00000045
        :pswitch_37  #00000046
        :pswitch_19  #00000047
    .end packed-switch
.end method
