.class Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;
.super Ljava/lang/Object;
.source "UsbPortManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager$RawPortInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/server/usb/UsbPortManager$RawPortInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .registers 19

    .line 1331
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1332
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1333
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1334
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 1335
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_1a

    move v7, v5

    goto :goto_1b

    :cond_1a
    move v7, v6

    .line 1336
    :goto_1b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1337
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_27

    move v9, v5

    goto :goto_28

    :cond_27
    move v9, v6

    .line 1338
    :goto_28
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1339
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_34

    move v11, v5

    goto :goto_35

    :cond_34
    move v11, v6

    .line 1340
    :goto_35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v12

    .line 1341
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1342
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v14

    .line 1343
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1344
    new-instance v16, Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-object/from16 v0, v16

    move v5, v7

    move v6, v8

    move v7, v9

    move v8, v10

    move v9, v11

    move v10, v12

    move v11, v13

    move v12, v14

    move v13, v15

    invoke-direct/range {v0 .. v13}, Lcom/android/server/usb/UsbPortManager$RawPortInfo;-><init>(Ljava/lang/String;IIIZIZIZZIZI)V

    return-object v16
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;
    .registers 2

    .line 1356
    new-array p1, p1, [Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 1328
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager$RawPortInfo$1;->newArray(I)[Lcom/android/server/usb/UsbPortManager$RawPortInfo;

    move-result-object p1

    return-object p1
.end method
