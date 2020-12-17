.class public abstract Lcom/android/systemui/shared/recents/ISystemUiProxy$Stub;
.super Landroid/os/Binder;
.source "ISystemUiProxy.java"

# interfaces
.implements Lcom/android/systemui/shared/recents/ISystemUiProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/ISystemUiProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 123
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.android.systemui.shared.recents.ISystemUiProxy"

    .line 124
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "com.android.systemui.shared.recents.ISystemUiProxy"

    if-eq p1, v0, :cond_107

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_103

    const/4 v0, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_116

    packed-switch p1, :pswitch_data_124

    .line 305
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 207
    :pswitch_18  #0x14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_26

    move v3, v1

    .line 212
    :cond_26
    invoke-interface {p0, p1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setNavBarButtonAlpha(FZ)V

    .line 213
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 241
    :pswitch_2d  #0x13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 244
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantGestureCompletion(F)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 298
    :pswitch_3b  #0x12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->stopScreenPinning()V

    .line 300
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 291
    :pswitch_45  #0x11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonLongClicked()V

    .line 293
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 282
    :pswitch_4f  #0x10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 285
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyAccessibilityButtonClicked(I)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 264
    :pswitch_5d  #0xf
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 269
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->monitorGestureInput(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p0

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_78

    .line 272
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    invoke-virtual {p0, p3, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7b

    .line 276
    :cond_78
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7b
    return v1

    .line 250
    :pswitch_7c  #0xe
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8e

    .line 253
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 258
    :cond_8e
    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startAssistant(Landroid/os/Bundle;)V

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 232
    :pswitch_95  #0xd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 235
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onAssistantProgress(F)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 218
    :pswitch_a3  #0xa
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_b5

    .line 221
    sget-object p1, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 226
    :cond_b5
    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onStatusBarMotionEvent(Landroid/view/MotionEvent;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 196
    :pswitch_bc  #0x9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_ca

    move v3, v1

    .line 201
    :cond_ca
    invoke-interface {p0, p1, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->setBackButtonAlpha(FZ)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 182
    :pswitch_d1  #0x8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->getNonMinimizedSplitScreenSecondaryBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_e4

    .line 186
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p0, p3, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_e7

    .line 190
    :cond_e4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    :goto_e7
    return v1

    .line 173
    :pswitch_e8  #0x7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_f2

    move v3, v1

    .line 176
    :cond_f2
    invoke-interface {p0, v3}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onOverviewShown(Z)V

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 166
    :pswitch_f9  #0x6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-interface {p0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->onSplitScreenInvoked()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 152
    :cond_103
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 157
    :cond_107
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 160
    invoke-interface {p0, p1}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->startScreenPinning(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    nop

    :pswitch_data_116
    .packed-switch 0x6
        :pswitch_f9  #00000006
        :pswitch_e8  #00000007
        :pswitch_d1  #00000008
        :pswitch_bc  #00000009
        :pswitch_a3  #0000000a
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0xd
        :pswitch_95  #0000000d
        :pswitch_7c  #0000000e
        :pswitch_5d  #0000000f
        :pswitch_4f  #00000010
        :pswitch_45  #00000011
        :pswitch_3b  #00000012
        :pswitch_2d  #00000013
        :pswitch_18  #00000014
    .end packed-switch
.end method
