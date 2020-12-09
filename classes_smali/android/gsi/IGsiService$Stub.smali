.class public abstract Landroid/gsi/IGsiService$Stub;
.super Landroid/os/Binder;
.source "IGsiService.java"

# interfaces
.implements Landroid/gsi/IGsiService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/gsi/IGsiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/gsi/IGsiService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.gsi.IGsiService"

.field static final TRANSACTION_beginGsiInstall:I = 0x10

.field static final TRANSACTION_cancelGsiInstall:I = 0x7

.field static final TRANSACTION_commitGsiChunkFromMemory:I = 0x4

.field static final TRANSACTION_commitGsiChunkFromStream:I = 0x2

.field static final TRANSACTION_disableGsiInstall:I = 0xa

.field static final TRANSACTION_getGsiBootStatus:I = 0xe

.field static final TRANSACTION_getInstallProgress:I = 0x3

.field static final TRANSACTION_getInstalledGsiImageDir:I = 0xf

.field static final TRANSACTION_getUserdataImageSize:I = 0xb

.field static final TRANSACTION_isGsiEnabled:I = 0x6

.field static final TRANSACTION_isGsiInstallInProgress:I = 0x8

.field static final TRANSACTION_isGsiInstalled:I = 0xd

.field static final TRANSACTION_isGsiRunning:I = 0xc

.field static final TRANSACTION_removeGsiInstall:I = 0x9

.field static final TRANSACTION_setGsiBootable:I = 0x5

.field static final TRANSACTION_startGsiInstall:I = 0x1

.field static final TRANSACTION_wipeGsiUserdata:I = 0x11


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 188
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 189
    const-string v0, "android.gsi.IGsiService"

    invoke-virtual {p0, p0, v0}, Landroid/gsi/IGsiService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/gsi/IGsiService;
    .registers 3

    .line 197
    if-nez p0, :cond_4

    .line 198
    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_4
    const-string v0, "android.gsi.IGsiService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/gsi/IGsiService;

    if-eqz v1, :cond_13

    .line 202
    check-cast v0, Landroid/gsi/IGsiService;

    return-object v0

    .line 204
    :cond_13
    new-instance v0, Landroid/gsi/IGsiService$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/gsi/IGsiService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/gsi/IGsiService;
    .registers 1

    .line 899
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/gsi/IGsiService;)Z
    .registers 2

    .line 892
    sget-object v0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 893
    sput-object p0, Landroid/gsi/IGsiService$Stub$Proxy;->sDefaultImpl:Landroid/gsi/IGsiService;

    .line 894
    const/4 p0, 0x1

    return p0

    .line 896
    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 208
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    nop

    .line 213
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "android.gsi.IGsiService"

    if-eq p1, v0, :cond_150

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_154

    .line 390
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 382
    :pswitch_13  #0x11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->wipeGsiUserdata()I

    move-result p1

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 386
    return v1

    .line 367
    :pswitch_21  #0x10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_34

    .line 370
    sget-object p1, Landroid/gsi/GsiInstallParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/gsi/GsiInstallParams;

    goto :goto_35

    .line 373
    :cond_34
    nop

    .line 375
    :goto_35
    invoke-virtual {p0, v0}, Landroid/gsi/IGsiService$Stub;->beginGsiInstall(Landroid/gsi/GsiInstallParams;)I

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 378
    return v1

    .line 359
    :pswitch_40  #0xf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstalledGsiImageDir()Ljava/lang/String;

    move-result-object p1

    .line 361
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 363
    return v1

    .line 351
    :pswitch_4e  #0xe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getGsiBootStatus()I

    move-result p1

    .line 353
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 354
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    return v1

    .line 343
    :pswitch_5c  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstalled()Z

    move-result p1

    .line 345
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    return v1

    .line 335
    :pswitch_6a  #0xc
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiRunning()Z

    move-result p1

    .line 337
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    return v1

    .line 327
    :pswitch_78  #0xb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getUserdataImageSize()J

    move-result-wide p1

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 331
    return v1

    .line 319
    :pswitch_86  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->disableGsiInstall()Z

    move-result p1

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    return v1

    .line 311
    :pswitch_94  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->removeGsiInstall()Z

    move-result p1

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    return v1

    .line 303
    :pswitch_a2  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiInstallInProgress()Z

    move-result p1

    .line 305
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    return v1

    .line 295
    :pswitch_b0  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->cancelGsiInstall()Z

    move-result p1

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    return v1

    .line 287
    :pswitch_be  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->isGsiEnabled()Z

    move-result p1

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v1

    .line 277
    :pswitch_cc  #0x5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_d6

    move v3, v1

    .line 280
    :cond_d6
    invoke-virtual {p0, v3}, Landroid/gsi/IGsiService$Stub;->setGsiBootable(Z)I

    move-result p1

    .line 281
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 282
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    return v1

    .line 267
    :pswitch_e1  #0x4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromMemory([B)Z

    move-result p1

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return v1

    .line 253
    :pswitch_f3  #0x3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Landroid/gsi/IGsiService$Stub;->getInstallProgress()Landroid/gsi/GsiProgress;

    move-result-object p1

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 256
    if-eqz p1, :cond_106

    .line 257
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    invoke-virtual {p1, p3, v1}, Landroid/gsi/GsiProgress;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_109

    .line 261
    :cond_106
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    :goto_109
    return v1

    .line 236
    :pswitch_10a  #0x2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_11d

    .line 239
    sget-object p1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    goto :goto_11e

    .line 242
    :cond_11d
    nop

    .line 245
    :goto_11e
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 246
    invoke-virtual {p0, v0, p1, p2}, Landroid/gsi/IGsiService$Stub;->commitGsiChunkFromStream(Landroid/os/ParcelFileDescriptor;J)Z

    move-result p1

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 249
    return v1

    .line 222
    :pswitch_12d  #0x1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 226
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 228
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_140

    move p1, v1

    goto :goto_141

    :cond_140
    move p1, v3

    .line 229
    :goto_141
    move-object v2, p0

    move-wide v3, v4

    move-wide v5, v6

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/gsi/IGsiService$Stub;->startGsiInstall(JJZ)I

    move-result p1

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    return v1

    .line 217
    :cond_150
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    return v1

    :pswitch_data_154
    .packed-switch 0x1
        :pswitch_12d  #00000001
        :pswitch_10a  #00000002
        :pswitch_f3  #00000003
        :pswitch_e1  #00000004
        :pswitch_cc  #00000005
        :pswitch_be  #00000006
        :pswitch_b0  #00000007
        :pswitch_a2  #00000008
        :pswitch_94  #00000009
        :pswitch_86  #0000000a
        :pswitch_78  #0000000b
        :pswitch_6a  #0000000c
        :pswitch_5c  #0000000d
        :pswitch_4e  #0000000e
        :pswitch_40  #0000000f
        :pswitch_21  #00000010
        :pswitch_13  #00000011
    .end packed-switch
.end method
