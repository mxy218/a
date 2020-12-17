.class public abstract Landroid/net/IOemNetd$Stub;
.super Landroid/os/Binder;
.source "IOemNetd.java"

# interfaces
.implements Landroid/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IOemNetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IOemNetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IOemNetd"

.field static final TRANSACTION_addHostNames:I = 0x6

.field static final TRANSACTION_enableQuickAppRulse:I = 0x8

.field static final TRANSACTION_getHostNames:I = 0x5

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getIptableRules:I = 0x9

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_notifySmartNetworkPolicyEnabled:I = 0xa

.field static final TRANSACTION_onAppNetworkPolicyRequested:I = 0xb

.field static final TRANSACTION_registerOemUnsolicitedEventListener:I = 0x2

.field static final TRANSACTION_resetHosts:I = 0x7

.field static final TRANSACTION_runIpCounterCommand:I = 0x3

.field static final TRANSACTION_setFirewallUidChainRule:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 73
    const-string v0, "android.net.IOemNetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/IOemNetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IOemNetd;
    .registers 3
    .param p0, "obj"  # Landroid/os/IBinder;

    .line 81
    if-nez p0, :cond_4

    .line 82
    const/4 v0, 0x0

    return-object v0

    .line 84
    :cond_4
    const-string v0, "android.net.IOemNetd"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 85
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Landroid/net/IOemNetd;

    if-eqz v1, :cond_14

    .line 86
    move-object v1, v0

    check-cast v1, Landroid/net/IOemNetd;

    return-object v1

    .line 88
    :cond_14
    new-instance v1, Landroid/net/IOemNetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IOemNetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroid/net/IOemNetd;
    .registers 1

    .line 507
    sget-object v0, Landroid/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetd;

    return-object v0
.end method

.method public static setDefaultImpl(Landroid/net/IOemNetd;)Z
    .registers 2
    .param p0, "impl"  # Landroid/net/IOemNetd;

    .line 500
    sget-object v0, Landroid/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetd;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 501
    sput-object p0, Landroid/net/IOemNetd$Stub$Proxy;->sDefaultImpl:Landroid/net/IOemNetd;

    .line 502
    const/4 v0, 0x1

    return v0

    .line 504
    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .line 92
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    const-string v0, "android.net.IOemNetd"

    .line 97
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0xffffff

    const/4 v2, 0x1

    if-eq p1, v1, :cond_e2

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_de

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_f0

    .line 223
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 206
    :pswitch_16  #0xb
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 209
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Landroid/net/IOemNetd$Stub;->onAppNetworkPolicyRequested(I)I

    move-result v3

    .line 210
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    return v2

    .line 197
    .end local v1  # "_arg0":I
    .end local v3  # "_result":I
    :pswitch_28  #0xa
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_32

    move v1, v2

    .line 200
    .local v1, "_arg0":Z
    :cond_32
    invoke-virtual {p0, v1}, Landroid/net/IOemNetd$Stub;->notifySmartNetworkPolicyEnabled(Z)V

    .line 201
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    return v2

    .line 185
    .end local v1  # "_arg0":Z
    :pswitch_39  #0x9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/IOemNetd$Stub;->getIptableRules(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 193
    return v2

    .line 173
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v3  # "_arg1":Ljava/lang/String;
    .end local v4  # "_result":[Ljava/lang/String;
    :pswitch_4f  #0x8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_59

    move v1, v2

    .line 177
    .local v1, "_arg0":Z
    :cond_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 178
    .restart local v3  # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/IOemNetd$Stub;->enableQuickAppRulse(ZLjava/lang/String;)Z

    move-result v4

    .line 179
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    return v2

    .line 166
    .end local v1  # "_arg0":Z
    .end local v3  # "_arg1":Ljava/lang/String;
    .end local v4  # "_result":Z
    :pswitch_68  #0x7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Landroid/net/IOemNetd$Stub;->resetHosts()V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    return v2

    .line 154
    :pswitch_72  #0x6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 159
    .restart local v3  # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Landroid/net/IOemNetd$Stub;->addHostNames(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 160
    .restart local v4  # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return v2

    .line 146
    .end local v1  # "_arg0":Ljava/lang/String;
    .end local v3  # "_arg1":Ljava/lang/String;
    .end local v4  # "_result":Z
    :pswitch_88  #0x5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Landroid/net/IOemNetd$Stub;->getHostNames()[Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 150
    return v2

    .line 133
    .end local v1  # "_result":[Ljava/lang/String;
    :pswitch_96  #0x4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 137
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .restart local v3  # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 140
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v3, v4}, Landroid/net/IOemNetd$Stub;->setFirewallUidChainRule(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    return v2

    .line 123
    .end local v1  # "_arg0":I
    .end local v3  # "_arg1":Ljava/lang/String;
    .end local v4  # "_arg2":Ljava/lang/String;
    :pswitch_ac  #0x3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/net/IOemNetd$Stub;->runIpCounterCommand([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 127
    .local v3, "_result":[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 129
    return v2

    .line 114
    .end local v1  # "_arg0":[Ljava/lang/String;
    .end local v3  # "_result":[Ljava/lang/String;
    :pswitch_be  #0x2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IOemNetdUnsolicitedEventListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IOemNetdUnsolicitedEventListener;

    move-result-object v1

    .line 117
    .local v1, "_arg0":Landroid/net/IOemNetdUnsolicitedEventListener;
    invoke-virtual {p0, v1}, Landroid/net/IOemNetd$Stub;->registerOemUnsolicitedEventListener(Landroid/net/IOemNetdUnsolicitedEventListener;)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    return v2

    .line 106
    .end local v1  # "_arg0":Landroid/net/IOemNetdUnsolicitedEventListener;
    :pswitch_d0  #0x1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Landroid/net/IOemNetd$Stub;->isAlive()Z

    move-result v1

    .line 108
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    return v2

    .line 101
    .end local v1  # "_result":Z
    :cond_de
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    return v2

    .line 216
    :cond_e2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p0}, Landroid/net/IOemNetd$Stub;->getInterfaceVersion()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v2

    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_d0  #00000001
        :pswitch_be  #00000002
        :pswitch_ac  #00000003
        :pswitch_96  #00000004
        :pswitch_88  #00000005
        :pswitch_72  #00000006
        :pswitch_68  #00000007
        :pswitch_4f  #00000008
        :pswitch_39  #00000009
        :pswitch_28  #0000000a
        :pswitch_16  #0000000b
    .end packed-switch
.end method
