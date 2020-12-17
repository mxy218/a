.class Landroid/os/IDumpstate$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDumpstate.java"

# interfaces
.implements Landroid/os/IDumpstate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IDumpstate$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/os/IDumpstate;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"  # Landroid/os/IBinder;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    iput-object p1, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 147
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 150
    iget-object v0, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelBugreport()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 238
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 239
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    invoke-interface {v3}, Landroid/os/IDumpstate;->cancelBugreport()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 240
    return-void

    .line 242
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 245
    .end local v2  # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 247
    nop

    .line 248
    return-void

    .line 245
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 154
    const-string v0, "android.os.IDumpstate"

    return-object v0
.end method

.method public setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;
    .registers 9
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "listener"  # Landroid/os/IDumpstateListener;
    .param p3, "getSectionDetails"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "android.os.IDumpstate"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    if-eqz p2, :cond_17

    invoke-interface {p2}, Landroid/os/IDumpstateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 174
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_21

    move v4, v2

    goto :goto_22

    :cond_21
    move v4, v3

    :goto_22
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget-object v4, p0, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v4, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 176
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 177
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Landroid/os/IDumpstate;->setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_56

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    return-object v3

    .line 179
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IDumpstateToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateToken;

    move-result-object v3
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_56

    move-object v2, v3

    .line 183
    .local v2, "_result":Landroid/os/IDumpstateToken;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    nop

    .line 186
    return-object v2

    .line 183
    .end local v2  # "_result":Landroid/os/IDumpstateToken;
    :catchall_56
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .registers 23
    .param p1, "callingUid"  # I
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "bugreportFd"  # Ljava/io/FileDescriptor;
    .param p4, "screenshotFd"  # Ljava/io/FileDescriptor;
    .param p5, "bugreportMode"  # I
    .param p6, "listener"  # Landroid/os/IDumpstateListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 209
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_7e

    .line 210
    move/from16 v10, p1

    :try_start_f
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_7a

    .line 211
    move-object/from16 v11, p2

    :try_start_14
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_76

    .line 212
    move-object/from16 v12, p3

    :try_start_19
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_72

    .line 213
    move-object/from16 v13, p4

    :try_start_1e
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_6e

    .line 214
    move/from16 v14, p5

    :try_start_23
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    if-eqz p6, :cond_2d

    invoke-interface/range {p6 .. p6}, Landroid/os/IDumpstateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_6a

    .line 216
    move-object/from16 v15, p0

    :try_start_33
    iget-object v0, v15, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 217
    .local v0, "_status":Z
    if-nez v0, :cond_5d

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    if-eqz v3, :cond_5d

    .line 218
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_68

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    return-void

    .line 221
    :cond_5d
    :try_start_5d
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_68

    .line 224
    .end local v0  # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catchall_68
    move-exception v0

    goto :goto_8b

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8b

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_89

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_87

    :catchall_76
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_85

    :catchall_7a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_83

    :catchall_7e
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v10, p1

    :goto_83
    move-object/from16 v11, p2

    :goto_85
    move-object/from16 v12, p3

    :goto_87
    move-object/from16 v13, p4

    :goto_89
    move/from16 v14, p5

    :goto_8b
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
