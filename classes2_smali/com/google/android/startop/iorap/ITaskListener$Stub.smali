.class public abstract Lcom/google/android/startop/iorap/ITaskListener$Stub;
.super Landroid/os/Binder;
.source "ITaskListener.java"

# interfaces
.implements Lcom/google/android/startop/iorap/ITaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/ITaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.startop.iorap.ITaskListener"

.field static final TRANSACTION_onComplete:I = 0x2

.field static final TRANSACTION_onProgress:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/startop/iorap/ITaskListener;
    .registers 3

    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 p0, 0x0

    return-object p0

    .line 45
    :cond_4
    const-string v0, "com.google.android.startop.iorap.ITaskListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/google/android/startop/iorap/ITaskListener;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/google/android/startop/iorap/ITaskListener;

    return-object v0

    .line 49
    :cond_13
    new-instance v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/android/startop/iorap/ITaskListener;
    .registers 1

    .line 196
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/google/android/startop/iorap/ITaskListener;)Z
    .registers 2

    .line 189
    sget-object v0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 190
    sput-object p0, Lcom/google/android/startop/iorap/ITaskListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/startop/iorap/ITaskListener;

    .line 191
    const/4 p0, 0x1

    return p0

    .line 193
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 53
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    nop

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.google.android.startop.iorap.ITaskListener"

    if-eq p1, v1, :cond_40

    const/4 v3, 0x2

    if-eq p1, v3, :cond_18

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_14

    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 62
    :cond_14
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    return v1

    .line 87
    :cond_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2a

    .line 90
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_2b

    .line 93
    :cond_2a
    move-object p1, v0

    .line 96
    :goto_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3b

    .line 97
    sget-object p3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/TaskResult;

    goto :goto_3c

    .line 100
    :cond_3b
    nop

    .line 102
    :goto_3c
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 103
    return v1

    .line 67
    :cond_40
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_52

    .line 70
    sget-object p1, Lcom/google/android/startop/iorap/RequestId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/startop/iorap/RequestId;

    goto :goto_53

    .line 73
    :cond_52
    move-object p1, v0

    .line 76
    :goto_53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_63

    .line 77
    sget-object p3, Lcom/google/android/startop/iorap/TaskResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/google/android/startop/iorap/TaskResult;

    goto :goto_64

    .line 80
    :cond_63
    nop

    .line 82
    :goto_64
    invoke-virtual {p0, p1, v0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;->onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V

    .line 83
    return v1
.end method
