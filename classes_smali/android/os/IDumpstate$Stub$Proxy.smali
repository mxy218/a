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
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 236
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
    if-nez v2, :cond_2b

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 239
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IDumpstate;->cancelBugreport()V
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
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
    if-nez v2, :cond_42

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 177
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/os/IDumpstate;->setListener(Ljava/lang/String;Landroid/os/IDumpstateListener;Z)Landroid/os/IDumpstateToken;

    move-result-object p1
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_55

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    return-object p1

    .line 179
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/IDumpstateToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDumpstateToken;

    move-result-object p1
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_55

    .line 183
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 185
    nop

    .line 186
    return-object p1

    .line 183
    :catchall_55
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    .registers 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 206
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 209
    :try_start_8
    const-string v0, "android.os.IDumpstate"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 210
    move v0, p1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    move-object v5, p2

    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    move-object v6, p3

    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 213
    move-object v7, p4

    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 214
    move v8, p5

    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    if-eqz p6, :cond_28

    invoke-interface/range {p6 .. p6}, Landroid/os/IDumpstateListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 216
    move-object v3, p0

    iget-object v3, v3, Landroid/os/IDumpstate$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v9, 0x0

    invoke-interface {v3, v4, v1, v2, v9}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 217
    if-nez v3, :cond_52

    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    if-eqz v3, :cond_52

    .line 218
    invoke-static {}, Landroid/os/IDumpstate$Stub;->getDefaultImpl()Landroid/os/IDumpstate;

    move-result-object v3

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Landroid/os/IDumpstate;->startBugreport(ILjava/lang/String;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;ILandroid/os/IDumpstateListener;)V
    :try_end_4b
    .catchall {:try_start_8 .. :try_end_4b} :catchall_5d

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 219
    return-void

    .line 221
    :cond_52
    :try_start_52
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_5d

    .line 224
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 226
    nop

    .line 227
    return-void

    .line 224
    :catchall_5d
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method
