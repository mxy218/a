.class public interface abstract Lcom/meizu/common/pps/event/IEventCallback;
.super Ljava/lang/Object;
.source "IEventCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.meizu.common.pps.IEvent"

.field public static final DUMP:I = 0x3

.field public static final GET_WORKING_LIST:I = 0x7

.field public static final IS_SENSOR_FASTEST:I = 0x8

.field public static final MY_PID:I = 0x4

.field public static final ON_DATA_COLLECT_EVENT:I = 0x6

.field public static final ON_PROCESS_EVENT:I = 0x1

.field public static final ON_SYSTEM_EVENT:I = 0x2

.field public static final ON_U_EVENT:I = 0x5


# virtual methods
.method public abstract dumpData(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getWorkingList(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isSensorFastest(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract myPid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onDataCollectEvent(ILcom/meizu/common/pps/event/Args;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onProcessEvent(ILcom/meizu/common/pps/event/Args;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSystemEvent(ILcom/meizu/common/pps/event/Args;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUEvent(ILcom/meizu/common/pps/event/Args;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
