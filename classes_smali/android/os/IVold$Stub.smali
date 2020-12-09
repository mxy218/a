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

    .line 258
    if-nez p0, :cond_4

    .line 259
    const/4 p0, 0x0

    return-object p0

    .line 261
    :cond_4
    const-string v0, "android.os.IVold"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/os/IVold;

    if-eqz v1, :cond_13

    .line 263
    check-cast v0, Landroid/os/IVold;

    return-object v0

    .line 265
    :cond_13
    new-instance v0, Landroid/os/IVold$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/os/IVold$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/os/IVold;
    .registers 1

    .line 2518
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/os/IVold;)Z
    .registers 2

    .line 2511
    sget-object v0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 2512
    sput-object p0, Landroid/os/IVold$Stub$Proxy;->sDefaultImpl:Landroid/os/IVold;

    .line 2513
    const/4 p0, 0x1

    return p0

    .line 2515
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 269
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 273
    nop

    .line 274
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.os.IVold"

    if-eq p1, v0, :cond_4da

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_4de

    .line 1006
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 990
    :pswitch_12  #0x47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 992
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 994
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 998
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 999
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->openAppFuseFile(IIII)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 1000
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 1002
    return v1

    .line 981
    :pswitch_30  #0x46
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 983
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 984
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->destroyStubVolume(Ljava/lang/String;)V

    .line 985
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    return v1

    .line 963
    :pswitch_3e  #0x45
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 967
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 969
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 971
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 973
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 974
    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/os/IVold$Stub;->createStubVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 975
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 977
    return v1

    .line 955
    :pswitch_61  #0x44
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsFileCheckpoint()Z

    move-result p1

    .line 957
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 958
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 959
    return v1

    .line 947
    :pswitch_6f  #0x43
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsBlockCheckpoint()Z

    move-result p1

    .line 949
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    return v1

    .line 939
    :pswitch_7d  #0x42
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->supportsCheckpoint()Z

    move-result p1

    .line 941
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    return v1

    .line 932
    :pswitch_8b  #0x41
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->markBootAttempt()V

    .line 934
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    return v1

    .line 921
    :pswitch_95  #0x40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 923
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 925
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 926
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->restoreCheckpointPart(Ljava/lang/String;I)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    return v1

    .line 912
    :pswitch_a7  #0x3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 914
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 915
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->restoreCheckpoint(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 917
    return v1

    .line 905
    :pswitch_b5  #0x3e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->prepareCheckpoint()V

    .line 907
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 908
    return v1

    .line 898
    :pswitch_bf  #0x3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->commitChanges()V

    .line 900
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 901
    return v1

    .line 887
    :pswitch_c9  #0x3c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 891
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_d7

    move v0, v1

    .line 892
    :cond_d7
    invoke-virtual {p0, p1, v0}, Landroid/os/IVold$Stub;->abortChanges(Ljava/lang/String;Z)V

    .line 893
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    return v1

    .line 879
    :pswitch_de  #0x3b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 880
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsRollback()Z

    move-result p1

    .line 881
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 882
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 883
    return v1

    .line 871
    :pswitch_ec  #0x3a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->needsCheckpoint()Z

    move-result p1

    .line 873
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    return v1

    .line 862
    :pswitch_fa  #0x39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 864
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 865
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->startCheckpoint(I)V

    .line 866
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 867
    return v1

    .line 849
    :pswitch_108  #0x38
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 851
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 853
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 855
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 856
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->destroySandboxForApp(Ljava/lang/String;Ljava/lang/String;I)V

    .line 857
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 858
    return v1

    .line 834
    :pswitch_11e  #0x37
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 838
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 840
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 842
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 843
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->prepareSandboxForApp(Ljava/lang/String;ILjava/lang/String;I)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    return v1

    .line 821
    :pswitch_138  #0x36
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 827
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 828
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->destroyUserStorage(Ljava/lang/String;II)V

    .line 829
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    return v1

    .line 806
    :pswitch_14e  #0x35
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 814
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 815
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->prepareUserStorage(Ljava/lang/String;III)V

    .line 816
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 817
    return v1

    .line 797
    :pswitch_168  #0x34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 800
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->lockUserKey(I)V

    .line 801
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    return v1

    .line 782
    :pswitch_176  #0x33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 786
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 788
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 790
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 791
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->unlockUserKey(IILjava/lang/String;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    return v1

    .line 773
    :pswitch_190  #0x32
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 775
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 776
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->fixateNewestUserKeyAuth(I)V

    .line 777
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    return v1

    .line 758
    :pswitch_19e  #0x31
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 762
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 764
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 766
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 767
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->clearUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 768
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    return v1

    .line 743
    :pswitch_1b8  #0x30
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 745
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 749
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 751
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 752
    invoke-virtual {p0, p1, p4, v0, p2}, Landroid/os/IVold$Stub;->addUserKeyAuth(IILjava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    return v1

    .line 734
    :pswitch_1d2  #0x2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 737
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->destroyUserKey(I)V

    .line 738
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 739
    return v1

    .line 721
    :pswitch_1e0  #0x2e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 727
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_1f2

    move v0, v1

    .line 728
    :cond_1f2
    invoke-virtual {p0, p1, p4, v0}, Landroid/os/IVold$Stub;->createUserKey(IIZ)V

    .line 729
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    return v1

    .line 710
    :pswitch_1f9  #0x2d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 712
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 715
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->encryptFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    return v1

    .line 699
    :pswitch_20b  #0x2c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 703
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 704
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->mountFstab(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 706
    return v1

    .line 691
    :pswitch_21d  #0x2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->isConvertibleToFbe()Z

    move-result p1

    .line 693
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    return v1

    .line 684
    :pswitch_22b  #0x2a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->initUser0()V

    .line 686
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    return v1

    .line 677
    :pswitch_235  #0x29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->mountDefaultEncrypted()V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    return v1

    .line 670
    :pswitch_23f  #0x28
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fbeEnable()V

    .line 672
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    return v1

    .line 663
    :pswitch_249  #0x27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeClearPassword()V

    .line 665
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 666
    return v1

    .line 655
    :pswitch_253  #0x26
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeGetPassword()Ljava/lang/String;

    move-result-object p1

    .line 657
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 658
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 659
    return v1

    .line 647
    :pswitch_261  #0x25
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeGetPasswordType()I

    move-result p1

    .line 649
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 650
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    return v1

    .line 636
    :pswitch_26f  #0x24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 641
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->fdeSetField(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    return v1

    .line 626
    :pswitch_281  #0x23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->fdeGetField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 630
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    return v1

    .line 617
    :pswitch_293  #0x22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 620
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->fdeVerifyPassword(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 622
    return v1

    .line 604
    :pswitch_2a1  #0x21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 610
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 611
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->fdeChangePassword(ILjava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 613
    return v1

    .line 591
    :pswitch_2b7  #0x20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 595
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 597
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 598
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->fdeEnable(ILjava/lang/String;I)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    return v1

    .line 583
    :pswitch_2cd  #0x1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeComplete()I

    move-result p1

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    return v1

    .line 576
    :pswitch_2db  #0x1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->fdeRestart()V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 579
    return v1

    .line 567
    :pswitch_2e5  #0x1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->fdeCheckPassword(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    return v1

    .line 556
    :pswitch_2f3  #0x1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 560
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 561
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->unmountAppFuse(II)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    return v1

    .line 544
    :pswitch_305  #0x1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 549
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->mountAppFuse(II)Ljava/io/FileDescriptor;

    move-result-object p1

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 551
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 552
    return v1

    .line 535
    :pswitch_31b  #0x1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object p1

    .line 538
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->abortIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 539
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 540
    return v1

    .line 526
    :pswitch_32d  #0x19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object p1

    .line 529
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->runIdleMaint(Landroid/os/IVoldTaskListener;)V

    .line 530
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    return v1

    .line 515
    :pswitch_33f  #0x18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 519
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object p2

    .line 520
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->fstrim(ILandroid/os/IVoldTaskListener;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 522
    return v1

    .line 506
    :pswitch_355  #0x17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 509
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->destroyObb(Ljava/lang/String;)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    return v1

    .line 492
    :pswitch_363  #0x16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 498
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 499
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->createObb(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 502
    return v1

    .line 483
    :pswitch_37d  #0x15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 486
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->mkdirs(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    return v1

    .line 472
    :pswitch_38b  #0x14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 476
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 477
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->remountUid(II)V

    .line 478
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    return v1

    .line 459
    :pswitch_39d  #0x13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 465
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object p2

    .line 466
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->moveStorage(Ljava/lang/String;Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    return v1

    .line 450
    :pswitch_3b7  #0x12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->checkEncryption(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    return v1

    .line 439
    :pswitch_3c5  #0x11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/os/IVoldTaskListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldTaskListener;

    move-result-object p2

    .line 444
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    return v1

    .line 428
    :pswitch_3db  #0x10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 433
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->format(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    return v1

    .line 419
    :pswitch_3ed  #0xf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->unmount(Ljava/lang/String;)V

    .line 423
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    return v1

    .line 406
    :pswitch_3fb  #0xe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 413
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->mount(Ljava/lang/String;II)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    return v1

    .line 395
    :pswitch_411  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 400
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->forgetPartition(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    return v1

    .line 382
    :pswitch_423  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 386
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 389
    invoke-virtual {p0, p1, p4, p2}, Landroid/os/IVold$Stub;->partition(Ljava/lang/String;II)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    return v1

    .line 373
    :pswitch_439  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_443

    move v0, v1

    .line 376
    :cond_443
    invoke-virtual {p0, v0}, Landroid/os/IVold$Stub;->onSecureKeyguardStateChanged(Z)V

    .line 377
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 378
    return v1

    .line 362
    :pswitch_44a  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    .line 366
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 367
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->addSandboxIds([I[Ljava/lang/String;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 369
    return v1

    .line 351
    :pswitch_45c  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    .line 356
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->addAppIds([Ljava/lang/String;[I)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    return v1

    .line 342
    :pswitch_46e  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 345
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->onUserStopped(I)V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    return v1

    .line 333
    :pswitch_47c  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 336
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->onUserStarted(I)V

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    return v1

    .line 324
    :pswitch_48a  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 327
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->onUserRemoved(I)V

    .line 328
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    return v1

    .line 313
    :pswitch_498  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 318
    invoke-virtual {p0, p1, p2}, Landroid/os/IVold$Stub;->onUserAdded(II)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    return v1

    .line 306
    :pswitch_4aa  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->shutdown()V

    .line 308
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 309
    return v1

    .line 299
    :pswitch_4b4  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->reset()V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    return v1

    .line 292
    :pswitch_4be  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0}, Landroid/os/IVold$Stub;->monitor()V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    return v1

    .line 283
    :pswitch_4c8  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IVoldListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoldListener;

    move-result-object p1

    .line 286
    invoke-virtual {p0, p1}, Landroid/os/IVold$Stub;->setListener(Landroid/os/IVoldListener;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    return v1

    .line 278
    :cond_4da
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    return v1

    :pswitch_data_4de
    .packed-switch 0x1
        :pswitch_4c8  #00000001
        :pswitch_4be  #00000002
        :pswitch_4b4  #00000003
        :pswitch_4aa  #00000004
        :pswitch_498  #00000005
        :pswitch_48a  #00000006
        :pswitch_47c  #00000007
        :pswitch_46e  #00000008
        :pswitch_45c  #00000009
        :pswitch_44a  #0000000a
        :pswitch_439  #0000000b
        :pswitch_423  #0000000c
        :pswitch_411  #0000000d
        :pswitch_3fb  #0000000e
        :pswitch_3ed  #0000000f
        :pswitch_3db  #00000010
        :pswitch_3c5  #00000011
        :pswitch_3b7  #00000012
        :pswitch_39d  #00000013
        :pswitch_38b  #00000014
        :pswitch_37d  #00000015
        :pswitch_363  #00000016
        :pswitch_355  #00000017
        :pswitch_33f  #00000018
        :pswitch_32d  #00000019
        :pswitch_31b  #0000001a
        :pswitch_305  #0000001b
        :pswitch_2f3  #0000001c
        :pswitch_2e5  #0000001d
        :pswitch_2db  #0000001e
        :pswitch_2cd  #0000001f
        :pswitch_2b7  #00000020
        :pswitch_2a1  #00000021
        :pswitch_293  #00000022
        :pswitch_281  #00000023
        :pswitch_26f  #00000024
        :pswitch_261  #00000025
        :pswitch_253  #00000026
        :pswitch_249  #00000027
        :pswitch_23f  #00000028
        :pswitch_235  #00000029
        :pswitch_22b  #0000002a
        :pswitch_21d  #0000002b
        :pswitch_20b  #0000002c
        :pswitch_1f9  #0000002d
        :pswitch_1e0  #0000002e
        :pswitch_1d2  #0000002f
        :pswitch_1b8  #00000030
        :pswitch_19e  #00000031
        :pswitch_190  #00000032
        :pswitch_176  #00000033
        :pswitch_168  #00000034
        :pswitch_14e  #00000035
        :pswitch_138  #00000036
        :pswitch_11e  #00000037
        :pswitch_108  #00000038
        :pswitch_fa  #00000039
        :pswitch_ec  #0000003a
        :pswitch_de  #0000003b
        :pswitch_c9  #0000003c
        :pswitch_bf  #0000003d
        :pswitch_b5  #0000003e
        :pswitch_a7  #0000003f
        :pswitch_95  #00000040
        :pswitch_8b  #00000041
        :pswitch_7d  #00000042
        :pswitch_6f  #00000043
        :pswitch_61  #00000044
        :pswitch_3e  #00000045
        :pswitch_30  #00000046
        :pswitch_12  #00000047
    .end packed-switch
.end method
