.class public abstract Lcom/meizu/common/pps/event/IEventCallbackNative;
.super Landroid/os/Binder;
.source "IEventCallbackNative.java"

# interfaces
.implements Lcom/meizu/common/pps/event/IEventCallback;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.meizu.common.pps.IEvent"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/common/pps/event/IEventCallbackNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/common/pps/event/IEventCallback;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 20
    if-nez p0, :cond_4

    .line 21
    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_4
    const-string v0, "com.meizu.common.pps.IEvent"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/pps/event/IEventCallback;

    .line 24
    .local v0, "in":Lcom/meizu/common/pps/event/IEventCallback;
    if-eqz v0, :cond_f

    .line 25
    return-object v0

    .line 27
    :cond_f
    new-instance v1, Lcom/meizu/common/pps/event/IEventCallbackProxy;

    invoke-direct {v1, p0}, Lcom/meizu/common/pps/event/IEventCallbackProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 32
    return-object p0
.end method

.method public myPid()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_98

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 94
    :pswitch_9  #0x8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "uid":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/pps/event/IEventCallbackNative;->isSensorFastest(I)Z

    move-result v2

    .line 96
    .local v2, "isSensorFastest":Z
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    return v0

    .line 88
    .end local v1  # "uid":I
    .end local v2  # "isSensorFastest":Z
    :pswitch_15  #0x7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .local v1, "type":I
    invoke-virtual {p0, v1}, Lcom/meizu/common/pps/event/IEventCallbackNative;->getWorkingList(I)Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "workingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 91
    return v0

    .line 61
    .end local v1  # "type":I
    .end local v2  # "workingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_21  #0x6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "event":I
    sget-object v2, Lcom/meizu/common/pps/event/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/pps/event/Args;

    .line 63
    .local v2, "args":Lcom/meizu/common/pps/event/Args;
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->onDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    return v0

    .line 54
    .end local v1  # "event":I
    .end local v2  # "args":Lcom/meizu/common/pps/event/Args;
    :pswitch_34  #0x5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .restart local v1  # "event":I
    sget-object v2, Lcom/meizu/common/pps/event/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/pps/event/Args;

    .line 56
    .restart local v2  # "args":Lcom/meizu/common/pps/event/Args;
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->onUEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v0

    .line 84
    .end local v1  # "event":I
    .end local v2  # "args":Lcom/meizu/common/pps/event/Args;
    :pswitch_47  #0x4
    invoke-virtual {p0}, Lcom/meizu/common/pps/event/IEventCallbackNative;->myPid()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    return v0

    .line 68
    :pswitch_4f  #0x3
    invoke-virtual {p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 69
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "args":[Ljava/lang/String;
    if-eqz v1, :cond_6d

    .line 72
    :try_start_59
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_66

    .line 75
    :try_start_60
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64

    .line 77
    goto :goto_6d

    .line 76
    :catch_64
    move-exception v3

    .line 78
    goto :goto_6d

    .line 74
    :catchall_66
    move-exception v0

    .line 75
    :try_start_67
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 77
    goto :goto_6c

    .line 76
    :catch_6b
    move-exception v3

    .line 77
    :goto_6c
    throw v0

    .line 80
    :cond_6d
    :goto_6d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    return v0

    .line 47
    .end local v1  # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v2  # "args":[Ljava/lang/String;
    :pswitch_71  #0x2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 48
    .local v1, "event":I
    sget-object v2, Lcom/meizu/common/pps/event/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/pps/event/Args;

    .line 49
    .local v2, "args":Lcom/meizu/common/pps/event/Args;
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->onSystemEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    return v0

    .line 40
    .end local v1  # "event":I
    .end local v2  # "args":Lcom/meizu/common/pps/event/Args;
    :pswitch_84  #0x1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 41
    .restart local v1  # "event":I
    sget-object v2, Lcom/meizu/common/pps/event/Args;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/pps/event/Args;

    .line 42
    .restart local v2  # "args":Lcom/meizu/common/pps/event/Args;
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/pps/event/IEventCallbackNative;->onProcessEvent(ILcom/meizu/common/pps/event/Args;)V

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    return v0

    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_84  #00000001
        :pswitch_71  #00000002
        :pswitch_4f  #00000003
        :pswitch_47  #00000004
        :pswitch_34  #00000005
        :pswitch_21  #00000006
        :pswitch_15  #00000007
        :pswitch_9  #00000008
    .end packed-switch
.end method
