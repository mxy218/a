.class public Lcom/android/server/midi/MidiService;
.super Landroid/media/midi/IMidiManager$Stub;
.source "MidiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/midi/MidiService$DeviceConnection;,
        Lcom/android/server/midi/MidiService$Device;,
        Lcom/android/server/midi/MidiService$Client;,
        Lcom/android/server/midi/MidiService$Lifecycle;
    }
.end annotation


# static fields
.field private static final EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MidiService"


# instance fields
.field private final mBluetoothDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothServiceUid:I

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDevicesByInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/media/midi/MidiDeviceInfo;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private final mDevicesByServer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$Device;",
            ">;"
        }
    .end annotation
.end field

.field private mNextDeviceId:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 634
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/media/midi/MidiDeviceInfo;

    sput-object v1, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    .line 860
    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"  # Landroid/content/Context;

    .line 563
    invoke-direct {p0}, Landroid/media/midi/IMidiManager$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 112
    new-instance v0, Lcom/android/server/midi/MidiService$1;

    invoke-direct {v0, p0}, Lcom/android/server/midi/MidiService$1;-><init>(Lcom/android/server/midi/MidiService;)V

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 564
    iput-object p1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 568
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/midi/MidiService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    invoke-direct {p0}, Lcom/android/server/midi/MidiService;->onUnlockUser()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->addPackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;
    .param p1, "x1"  # Lcom/android/server/midi/MidiService$Device;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/midi/MidiService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;
    .param p1, "x1"  # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->removePackageDeviceServers(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/midi/MidiService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget v0, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/midi/MidiService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/midi/MidiService;

    .line 62
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;
    .registers 29
    .param p1, "type"  # I
    .param p2, "numInputPorts"  # I
    .param p3, "numOutputPorts"  # I
    .param p4, "inputPortNames"  # [Ljava/lang/String;
    .param p5, "outputPortNames"  # [Ljava/lang/String;
    .param p6, "properties"  # Landroid/os/Bundle;
    .param p7, "server"  # Landroid/media/midi/IMidiDeviceServer;
    .param p8, "serviceInfo"  # Landroid/content/pm/ServiceInfo;
    .param p9, "isPrivate"  # Z
    .param p10, "uid"  # I

    .line 787
    move-object/from16 v7, p0

    move-object/from16 v8, p7

    iget v11, v7, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    add-int/lit8 v0, v11, 0x1

    iput v0, v7, Lcom/android/server/midi/MidiService;->mNextDeviceId:I

    .line 788
    .local v11, "id":I
    new-instance v0, Landroid/media/midi/MidiDeviceInfo;

    move-object v9, v0

    move/from16 v10, p1

    move/from16 v12, p2

    move/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move/from16 v17, p9

    invoke-direct/range {v9 .. v17}, Landroid/media/midi/MidiDeviceInfo;-><init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 791
    .local v9, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    if-eqz v8, :cond_30

    .line 793
    :try_start_20
    invoke-interface {v8, v9}, Landroid/media/midi/IMidiDeviceServer;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 797
    goto :goto_30

    .line 794
    :catch_24
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 795
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MidiService"

    const-string v2, "RemoteException in setDeviceInfo()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const/4 v1, 0x0

    return-object v1

    .line 800
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_30
    :goto_30
    const/4 v0, 0x0

    .line 801
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    const/4 v1, 0x0

    .line 802
    .local v1, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x3

    move/from16 v10, p1

    if-ne v10, v2, :cond_52

    .line 803
    const-string v2, "bluetooth_device"

    move-object/from16 v12, p6

    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 805
    iget-object v2, v7, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 806
    if-eqz v0, :cond_50

    .line 807
    invoke-virtual {v0, v9}, Lcom/android/server/midi/MidiService$Device;->setDeviceInfo(Landroid/media/midi/MidiDeviceInfo;)V

    .line 810
    :cond_50
    move-object v13, v1

    goto :goto_55

    .line 802
    :cond_52
    move-object/from16 v12, p6

    move-object v13, v1

    .line 810
    .end local v1  # "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    .local v13, "bluetoothDevice":Landroid/bluetooth/BluetoothDevice;
    :goto_55
    if-nez v0, :cond_69

    .line 811
    new-instance v14, Lcom/android/server/midi/MidiService$Device;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p7

    move-object v4, v9

    move-object/from16 v5, p8

    move/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceInfo;Landroid/content/pm/ServiceInfo;I)V

    move-object v0, v14

    move-object v1, v0

    goto :goto_6a

    .line 810
    :cond_69
    move-object v1, v0

    .line 813
    .end local v0  # "device":Lcom/android/server/midi/MidiService$Device;
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    :goto_6a
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    if-eqz v13, :cond_76

    .line 815
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 818
    :cond_76
    iget-object v2, v7, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 819
    :try_start_79
    iget-object v0, v7, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_93

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 820
    .local v3, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3, v1}, Lcom/android/server/midi/MidiService$Client;->deviceAdded(Lcom/android/server/midi/MidiService$Device;)V

    .line 821
    .end local v3  # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_83

    .line 822
    :cond_93
    monitor-exit v2

    .line 824
    return-object v9

    .line 822
    :catchall_95
    move-exception v0

    monitor-exit v2
    :try_end_97
    .catchall {:try_start_79 .. :try_end_97} :catchall_95

    throw v0
.end method

.method private addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V
    .registers 26
    .param p1, "serviceInfo"  # Landroid/content/pm/ServiceInfo;

    .line 863
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const/4 v1, 0x0

    .line 866
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_5
    iget-object v0, v12, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.media.midi.MidiDeviceService"

    invoke-virtual {v13, v0, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_d} :catch_238
    .catchall {:try_start_5 .. :try_end_d} :catchall_235

    move-object v14, v0

    .line 868
    .end local v1  # "parser":Landroid/content/res/XmlResourceParser;
    .local v14, "parser":Landroid/content/res/XmlResourceParser;
    if-nez v14, :cond_16

    .line 993
    if-eqz v14, :cond_15

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 868
    :cond_15
    return-void

    .line 871
    :cond_16
    :try_start_16
    const-string v0, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    iget-object v1, v13, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    .line 873
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping MIDI device service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": it does not require the permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "android.permission.BIND_MIDI_DEVICE_SERVICE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_42} :catch_232
    .catchall {:try_start_16 .. :try_end_42} :catchall_230

    .line 993
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    .line 876
    return-void

    .line 879
    :cond_46
    const/4 v0, 0x0

    .line 880
    .local v0, "properties":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 881
    .local v1, "numInputPorts":I
    const/4 v2, 0x0

    .line 882
    .local v2, "numOutputPorts":I
    const/4 v3, 0x0

    .line 883
    .local v3, "isPrivate":Z
    :try_start_4a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v4

    .line 884
    .local v15, "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    move-object/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    .line 887
    .end local v0  # "properties":Landroid/os/Bundle;
    .end local v1  # "numInputPorts":I
    .end local v2  # "numOutputPorts":I
    .end local v3  # "isPrivate":Z
    .local v10, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v16, "properties":Landroid/os/Bundle;
    .local v17, "numInputPorts":I
    .local v18, "numOutputPorts":I
    .local v19, "isPrivate":Z
    :goto_5e
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_62} :catch_232
    .catchall {:try_start_4a .. :try_end_62} :catchall_230

    move v9, v0

    .line 888
    .local v9, "eventType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_6c

    .line 889
    nop

    .line 993
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15  # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16  # "properties":Landroid/os/Bundle;
    .end local v17  # "numInputPorts":I
    .end local v18  # "numOutputPorts":I
    .end local v19  # "isPrivate":Z
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_25a

    .line 890
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15  # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v16  # "properties":Landroid/os/Bundle;
    .restart local v17  # "numInputPorts":I
    .restart local v18  # "numOutputPorts":I
    .restart local v19  # "isPrivate":Z
    :cond_6c
    const/4 v0, 0x2

    if-ne v9, v0, :cond_172

    .line 891
    :try_start_6f
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, "tagName":Ljava/lang/String;
    const-string v1, "device"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 893
    if-eqz v16, :cond_9a

    .line 894
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nested <device> elements in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v23, v10

    goto/16 :goto_216

    .line 898
    :cond_9a
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 899
    .end local v16  # "properties":Landroid/os/Bundle;
    .local v1, "properties":Landroid/os/Bundle;
    const-string/jumbo v2, "service_info"

    invoke-virtual {v1, v2, v13}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 900
    const/16 v17, 0x0

    .line 901
    const/16 v18, 0x0

    .line 902
    const/4 v2, 0x0

    .line 904
    .end local v19  # "isPrivate":Z
    .local v2, "isPrivate":Z
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v3

    .line 905
    .local v3, "count":I
    const/4 v4, 0x0

    move/from16 v19, v2

    .end local v2  # "isPrivate":Z
    .local v4, "i":I
    .restart local v19  # "isPrivate":Z
    :goto_b1
    if-ge v4, v3, :cond_d4

    .line 906
    invoke-interface {v14, v4}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 907
    .local v2, "name":Ljava/lang/String;
    invoke-interface {v14, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 908
    .local v5, "value":Ljava/lang/String;
    const-string/jumbo v6, "private"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    .line 909
    const-string/jumbo v6, "true"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move/from16 v19, v6

    goto :goto_d1

    .line 911
    :cond_ce
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    .end local v2  # "name":Ljava/lang/String;
    .end local v5  # "value":Ljava/lang/String;
    :goto_d1
    add-int/lit8 v4, v4, 0x1

    goto :goto_b1

    .line 914
    .end local v3  # "count":I
    .end local v4  # "i":I
    :cond_d4
    move-object/from16 v16, v1

    goto/16 :goto_16e

    .end local v1  # "properties":Landroid/os/Bundle;
    .restart local v16  # "properties":Landroid/os/Bundle;
    :cond_d8
    const-string/jumbo v1, "input-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_124

    .line 915
    if-nez v16, :cond_ff

    .line 916
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<input-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    move-object/from16 v23, v10

    goto/16 :goto_216

    .line 920
    :cond_ff
    add-int/lit8 v17, v17, 0x1

    .line 922
    const/4 v1, 0x0

    .line 923
    .local v1, "portName":Ljava/lang/String;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 924
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_107
    if-ge v3, v2, :cond_11f

    .line 925
    invoke-interface {v14, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 926
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v14, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 927
    .restart local v5  # "value":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11c

    .line 928
    move-object v1, v5

    .line 929
    goto :goto_11f

    .line 924
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "value":Ljava/lang/String;
    :cond_11c
    add-int/lit8 v3, v3, 0x1

    goto :goto_107

    .line 932
    .end local v3  # "i":I
    :cond_11f
    :goto_11f
    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    nop

    .end local v1  # "portName":Ljava/lang/String;
    .end local v2  # "count":I
    goto :goto_16e

    :cond_124
    const-string/jumbo v1, "output-port"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16e

    .line 934
    if-nez v16, :cond_14b

    .line 935
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<output-port> outside of <device> in metadata for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    move-object/from16 v23, v10

    goto/16 :goto_216

    .line 939
    :cond_14b
    add-int/lit8 v18, v18, 0x1

    .line 941
    const/4 v1, 0x0

    .line 942
    .restart local v1  # "portName":Ljava/lang/String;
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v2

    .line 943
    .restart local v2  # "count":I
    const/4 v3, 0x0

    .restart local v3  # "i":I
    :goto_153
    if-ge v3, v2, :cond_16b

    .line 944
    invoke-interface {v14, v3}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    .line 945
    .restart local v4  # "name":Ljava/lang/String;
    invoke-interface {v14, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    .line 946
    .restart local v5  # "value":Ljava/lang/String;
    const-string/jumbo v6, "name"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_168

    .line 947
    move-object v1, v5

    .line 948
    goto :goto_16b

    .line 943
    .end local v4  # "name":Ljava/lang/String;
    .end local v5  # "value":Ljava/lang/String;
    :cond_168
    add-int/lit8 v3, v3, 0x1

    goto :goto_153

    .line 951
    .end local v3  # "i":I
    :cond_16b
    :goto_16b
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    .end local v0  # "tagName":Ljava/lang/String;
    .end local v1  # "portName":Ljava/lang/String;
    .end local v2  # "count":I
    :cond_16e
    :goto_16e
    move-object/from16 v23, v10

    goto/16 :goto_22c

    :cond_172
    const/4 v0, 0x3

    if-ne v9, v0, :cond_228

    .line 954
    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 955
    .local v8, "tagName":Ljava/lang/String;
    const-string v0, "device"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 956
    if-eqz v16, :cond_21a

    .line 957
    if-nez v17, :cond_1a4

    if-nez v18, :cond_1a4

    .line 958
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<device> with no ports in metadata for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_1a0} :catch_232
    .catchall {:try_start_6f .. :try_end_1a0} :catchall_230

    .line 960
    move-object/from16 v23, v10

    goto/16 :goto_216

    .line 965
    :cond_1a4
    :try_start_1a4
    iget-object v0, v12, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 967
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v11, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_1af
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1a4 .. :try_end_1af} :catch_1f6
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1af} :catch_232
    .catchall {:try_start_1a4 .. :try_end_1af} :catchall_230

    .line 972
    .end local v0  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v11, "uid":I
    nop

    .line 974
    :try_start_1b0
    iget-object v7, v12, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v7
    :try_end_1b3
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1b3} :catch_232
    .catchall {:try_start_1b0 .. :try_end_1b3} :catchall_230

    .line 975
    const/4 v2, 0x2

    :try_start_1b4
    sget-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 977
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [Ljava/lang/String;

    sget-object v0, Lcom/android/server/midi/MidiService;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 978
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;
    :try_end_1c6
    .catchall {:try_start_1b4 .. :try_end_1c6} :catchall_1e9

    const/4 v0, 0x0

    .line 975
    move-object/from16 v1, p0

    move/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v20, v7

    move-object/from16 v7, v16

    move-object/from16 v21, v8

    .end local v8  # "tagName":Ljava/lang/String;
    .local v21, "tagName":Ljava/lang/String;
    move-object v8, v0

    move/from16 v22, v9

    .end local v9  # "eventType":I
    .local v22, "eventType":I
    move-object/from16 v9, p1

    move-object/from16 v23, v10

    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v23, "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v10, v19

    :try_start_1dc
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    .line 980
    monitor-exit v20
    :try_end_1e0
    .catchall {:try_start_1dc .. :try_end_1e0} :catchall_1f4

    .line 983
    const/16 v16, 0x0

    .line 984
    :try_start_1e2
    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 985
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->clear()V
    :try_end_1e8
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1e8} :catch_232
    .catchall {:try_start_1e2 .. :try_end_1e8} :catchall_230

    goto :goto_22c

    .line 980
    .end local v21  # "tagName":Ljava/lang/String;
    .end local v22  # "eventType":I
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8  # "tagName":Ljava/lang/String;
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_1e9
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    .end local v8  # "tagName":Ljava/lang/String;
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21  # "tagName":Ljava/lang/String;
    .restart local v22  # "eventType":I
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1f2
    :try_start_1f2
    monitor-exit v20
    :try_end_1f3
    .catchall {:try_start_1f2 .. :try_end_1f3} :catchall_1f4

    .end local v14  # "parser":Landroid/content/res/XmlResourceParser;
    .end local p0  # "this":Lcom/android/server/midi/MidiService;
    .end local p1  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :try_start_1f3
    throw v0

    .restart local v14  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local p0  # "this":Lcom/android/server/midi/MidiService;
    .restart local p1  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :catchall_1f4
    move-exception v0

    goto :goto_1f2

    .line 968
    .end local v11  # "uid":I
    .end local v21  # "tagName":Ljava/lang/String;
    .end local v22  # "eventType":I
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8  # "tagName":Ljava/lang/String;
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1f6
    move-exception v0

    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    .line 969
    .end local v8  # "tagName":Ljava/lang/String;
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v21  # "tagName":Ljava/lang/String;
    .restart local v22  # "eventType":I
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "MidiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not fetch ApplicationInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v13, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_1f3 .. :try_end_215} :catch_232
    .catchall {:try_start_1f3 .. :try_end_215} :catchall_230

    .line 971
    nop

    .line 887
    .end local v0  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v21  # "tagName":Ljava/lang/String;
    .end local v22  # "eventType":I
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_216
    move-object/from16 v10, v23

    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto/16 :goto_5e

    .line 956
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8  # "tagName":Ljava/lang/String;
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_21a
    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    .end local v8  # "tagName":Ljava/lang/String;
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21  # "tagName":Ljava/lang/String;
    .restart local v22  # "eventType":I
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_22c

    .line 955
    .end local v21  # "tagName":Ljava/lang/String;
    .end local v22  # "eventType":I
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8  # "tagName":Ljava/lang/String;
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_221
    move-object/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v23, v10

    .end local v8  # "tagName":Ljava/lang/String;
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v21  # "tagName":Ljava/lang/String;
    .restart local v22  # "eventType":I
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_22c

    .line 953
    .end local v21  # "tagName":Ljava/lang/String;
    .end local v22  # "eventType":I
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9  # "eventType":I
    .restart local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_228
    move/from16 v22, v9

    move-object/from16 v23, v10

    .line 989
    .end local v9  # "eventType":I
    .end local v10  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_22c
    move-object/from16 v10, v23

    goto/16 :goto_5e

    .line 993
    .end local v15  # "inputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16  # "properties":Landroid/os/Bundle;
    .end local v17  # "numInputPorts":I
    .end local v18  # "numOutputPorts":I
    .end local v19  # "isPrivate":Z
    .end local v23  # "outputPortNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_230
    move-exception v0

    goto :goto_25b

    .line 990
    :catch_232
    move-exception v0

    move-object v1, v14

    goto :goto_239

    .line 993
    .end local v14  # "parser":Landroid/content/res/XmlResourceParser;
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :catchall_235
    move-exception v0

    move-object v14, v1

    goto :goto_25b

    .line 990
    :catch_238
    move-exception v0

    .line 991
    .local v0, "e":Ljava/lang/Exception;
    :goto_239
    :try_start_239
    const-string v2, "MidiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to load component info "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_253
    .catchall {:try_start_239 .. :try_end_253} :catchall_235

    .line 993
    nop

    .end local v0  # "e":Ljava/lang/Exception;
    if-eqz v1, :cond_259

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 995
    :cond_259
    move-object v14, v1

    .end local v1  # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v14  # "parser":Landroid/content/res/XmlResourceParser;
    :goto_25a
    return-void

    .line 993
    :goto_25b
    if-eqz v14, :cond_260

    invoke-interface {v14}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_260
    throw v0
.end method

.method private addPackageDeviceServers(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 846
    :try_start_0
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x84

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_8} :catch_1b

    .line 851
    .local v0, "info":Landroid/content/pm/PackageInfo;
    nop

    .line 853
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .line 854
    .local v1, "services":[Landroid/content/pm/ServiceInfo;
    if-nez v1, :cond_e

    return-void

    .line 855
    :cond_e
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    array-length v3, v1

    if-ge v2, v3, :cond_1a

    .line 856
    aget-object v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 858
    .end local v2  # "i":I
    :cond_1a
    return-void

    .line 848
    .end local v0  # "info":Landroid/content/pm/PackageInfo;
    .end local v1  # "services":[Landroid/content/pm/ServiceInfo;
    :catch_1b
    move-exception v0

    .line 849
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePackageUpdate could not find package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MidiService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 850
    return-void
.end method

.method private getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;

    .line 269
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 270
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Client;

    .line 271
    .local v1, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v1, :cond_22

    .line 272
    new-instance v2, Lcom/android/server/midi/MidiService$Client;

    invoke-direct {v2, p0, p1}, Lcom/android/server/midi/MidiService$Client;-><init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_24

    move-object v1, v2

    .line 275
    const/4 v2, 0x0

    :try_start_14
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_1e
    .catchall {:try_start_14 .. :try_end_17} :catchall_24

    .line 278
    nop

    .line 279
    :try_start_18
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 276
    :catch_1e
    move-exception v2

    .line 277
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 281
    .end local v2  # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    monitor-exit v0

    return-object v1

    .line 282
    .end local v1  # "client":Lcom/android/server/midi/MidiService$Client;
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_24

    throw v1
.end method

.method private notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 6
    .param p1, "device"  # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"  # Landroid/media/midi/MidiDeviceStatus;

    .line 774
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 775
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Client;

    .line 776
    .local v2, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/midi/MidiService$Client;->deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    .line 777
    .end local v2  # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_d

    .line 778
    :cond_1d
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method private onUnlockUser()V
    .registers 6

    .line 571
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 573
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.midi.MidiDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 576
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_31

    .line 577
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 578
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_31

    .line 579
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 580
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_2e

    .line 581
    invoke-direct {p0, v4}, Lcom/android/server/midi/MidiService;->addPackageDeviceServer(Landroid/content/pm/ServiceInfo;)V

    .line 578
    .end local v4  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 588
    .end local v2  # "count":I
    .end local v3  # "i":I
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "com.android.bluetoothmidiservice"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_31 .. :try_end_3a} :catch_3b

    .line 591
    .local v2, "info":Landroid/content/pm/PackageInfo;
    goto :goto_3d

    .line 589
    .end local v2  # "info":Landroid/content/pm/PackageInfo;
    :catch_3b
    move-exception v2

    .line 590
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    .line 592
    .local v2, "info":Landroid/content/pm/PackageInfo;
    :goto_3d
    if-eqz v2, :cond_4a

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_4a

    .line 593
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    goto :goto_4d

    .line 595
    :cond_4a
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    .line 597
    :goto_4d
    return-void
.end method

.method private removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V
    .registers 6
    .param p1, "device"  # Lcom/android/server/midi/MidiService$Device;

    .line 829
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceServer()Landroid/media/midi/IMidiDeviceServer;

    move-result-object v0

    .line 830
    .local v0, "server":Landroid/media/midi/IMidiDeviceServer;
    if-eqz v0, :cond_f

    .line 831
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {v0}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 833
    :cond_f
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 836
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 837
    .local v3, "c":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3, p1}, Lcom/android/server/midi/MidiService$Client;->deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V

    .line 838
    .end local v3  # "c":Lcom/android/server/midi/MidiService$Client;
    goto :goto_25

    .line 839
    :cond_35
    monitor-exit v1

    .line 840
    return-void

    .line 839
    :catchall_37
    move-exception v2

    monitor-exit v1
    :try_end_39
    .catchall {:try_start_1b .. :try_end_39} :catchall_37

    throw v2
.end method

.method private removePackageDeviceServers(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 999
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1000
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 1001
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 1002
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1003
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1004
    invoke-direct {p0, v2}, Lcom/android/server/midi/MidiService;->removeDeviceLocked(Lcom/android/server/midi/MidiService$Device;)V

    .line 1006
    .end local v2  # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_29
    goto :goto_d

    .line 1007
    .end local v1  # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/midi/MidiService$Device;>;"
    :cond_2a
    monitor-exit v0

    .line 1008
    return-void

    .line 1007
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method private updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V
    .registers 9
    .param p1, "uid"  # I
    .param p2, "listener"  # Landroid/media/midi/IMidiDeviceListener;

    .line 617
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 618
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 620
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2, p1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_35

    if-eqz v3, :cond_32

    .line 622
    :try_start_1f
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v3

    .line 623
    .local v3, "status":Landroid/media/midi/MidiDeviceStatus;
    if-eqz v3, :cond_28

    .line 624
    invoke-interface {p2, v3}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_29
    .catchall {:try_start_1f .. :try_end_28} :catchall_35

    .line 628
    .end local v3  # "status":Landroid/media/midi/MidiDeviceStatus;
    :cond_28
    goto :goto_32

    .line 626
    :catch_29
    move-exception v3

    .line 627
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2a
    const-string v4, "MidiService"

    const-string/jumbo v5, "remote exception"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    .end local v2  # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3  # "e":Landroid/os/RemoteException;
    :cond_32
    :goto_32
    goto :goto_d

    .line 631
    :cond_33
    monitor-exit v0

    .line 632
    return-void

    .line 631
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_35

    throw v1
.end method


# virtual methods
.method public closeDevice(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "clientToken"  # Landroid/os/IBinder;
    .param p2, "deviceToken"  # Landroid/os/IBinder;

    .line 704
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 705
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 706
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeDeviceConnection(Landroid/os/IBinder;)V

    .line 707
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "writer"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 1012
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mContext:Landroid/content/Context;

    const-string v1, "MidiService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 1013
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1015
    .local v0, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    const-string v1, "MIDI Manager State:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1018
    const-string v1, "Devices:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1020
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 1021
    :try_start_25
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Device;

    .line 1022
    .local v3, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    .end local v3  # "device":Lcom/android/server/midi/MidiService$Device;
    goto :goto_2f

    .line 1024
    :cond_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_25 .. :try_end_44} :catchall_78

    .line 1025
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1027
    const-string v1, "Clients:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1029
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    monitor-enter v2

    .line 1030
    :try_start_52
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/midi/MidiService$Client;

    .line 1031
    .local v3, "client":Lcom/android/server/midi/MidiService$Client;
    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Client;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    .end local v3  # "client":Lcom/android/server/midi/MidiService$Client;
    goto :goto_5c

    .line 1033
    :cond_70
    monitor-exit v2
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_75

    .line 1034
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1035
    return-void

    .line 1033
    :catchall_75
    move-exception v1

    :try_start_76
    monitor-exit v2
    :try_end_77
    .catchall {:try_start_76 .. :try_end_77} :catchall_75

    throw v1

    .line 1024
    :catchall_78
    move-exception v2

    :try_start_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw v2
.end method

.method public getDeviceStatus(Landroid/media/midi/MidiDeviceInfo;)Landroid/media/midi/MidiDeviceStatus;
    .registers 6
    .param p1, "deviceInfo"  # Landroid/media/midi/MidiDeviceInfo;

    .line 753
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 754
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_f

    .line 757
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getDeviceStatus()Landroid/media/midi/MidiDeviceStatus;

    move-result-object v1

    return-object v1

    .line 755
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no such device for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getDevices()[Landroid/media/midi/MidiDeviceInfo;
    .registers 7

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v0, "deviceInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/midi/MidiDeviceInfo;>;"
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 640
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v2

    .line 641
    :try_start_c
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/midi/MidiService$Device;

    .line 642
    .local v4, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v4, v1}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 643
    invoke-virtual {v4}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v4  # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_2f
    goto :goto_16

    .line 646
    :cond_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_c .. :try_end_31} :catchall_3a

    .line 648
    sget-object v2, Lcom/android/server/midi/MidiService;->EMPTY_DEVICE_INFO_ARRAY:[Landroid/media/midi/MidiDeviceInfo;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/midi/MidiDeviceInfo;

    return-object v2

    .line 646
    :catchall_3a
    move-exception v3

    :try_start_3b
    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v3
.end method

.method public getServiceDeviceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/media/midi/MidiDeviceInfo;
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "className"  # Ljava/lang/String;

    .line 738
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 739
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 740
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v3

    .line 741
    .local v3, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v3, :cond_35

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 742
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 743
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 744
    invoke-virtual {v2}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 746
    .end local v2  # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3  # "serviceInfo":Landroid/content/pm/ServiceInfo;
    :cond_35
    goto :goto_d

    .line 747
    :cond_36
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 748
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_39

    throw v1
.end method

.method public openBluetoothDevice(Landroid/os/IBinder;Landroid/bluetooth/BluetoothDevice;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "bluetoothDevice"  # Landroid/bluetooth/BluetoothDevice;
    .param p3, "callback"  # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 680
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 681
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 685
    :cond_7
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 686
    :try_start_a
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 687
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    if-nez v2, :cond_1f

    .line 688
    new-instance v3, Lcom/android/server/midi/MidiService$Device;

    invoke-direct {v3, p0, p2}, Lcom/android/server/midi/MidiService$Device;-><init>(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    move-object v2, v3

    .line 689
    iget-object v3, p0, Lcom/android/server/midi/MidiService;->mBluetoothDevices:Ljava/util/HashMap;

    invoke-virtual {v3, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    :cond_1f
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_31

    .line 694
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 696
    .local v3, "identity":J
    :try_start_24
    invoke-virtual {v0, v2, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2c

    .line 698
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 699
    nop

    .line 700
    return-void

    .line 698
    :catchall_2c
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 691
    .end local v2  # "device":Lcom/android/server/midi/MidiService$Device;
    .end local v3  # "identity":J
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method public openDevice(Landroid/os/IBinder;Landroid/media/midi/MidiDeviceInfo;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "deviceInfo"  # Landroid/media/midi/MidiDeviceInfo;
    .param p3, "callback"  # Landroid/media/midi/IMidiDeviceOpenCallback;

    .line 654
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 655
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 658
    :cond_7
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 659
    :try_start_a
    iget-object v2, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/midi/MidiService$Device;

    .line 660
    .local v2, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v2, :cond_38

    .line 663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 666
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_a .. :try_end_1f} :catchall_4f

    .line 669
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 671
    .local v3, "identity":J
    :try_start_23
    invoke-virtual {v0, v2, p3}, Lcom/android/server/midi/MidiService$Client;->addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_2b

    .line 673
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 674
    nop

    .line 675
    return-void

    .line 673
    :catchall_2b
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 664
    .end local v3  # "identity":J
    :cond_30
    :try_start_30
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Attempt to open private device with wrong UID"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "client":Lcom/android/server/midi/MidiService$Client;
    .end local p0  # "this":Lcom/android/server/midi/MidiService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local p3  # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    throw v3

    .line 661
    .restart local v0  # "client":Lcom/android/server/midi/MidiService$Client;
    .restart local p0  # "this":Lcom/android/server/midi/MidiService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local p3  # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :cond_38
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "client":Lcom/android/server/midi/MidiService$Client;
    .end local p0  # "this":Lcom/android/server/midi/MidiService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .end local p3  # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    throw v3

    .line 666
    .end local v2  # "device":Lcom/android/server/midi/MidiService$Device;
    .restart local v0  # "client":Lcom/android/server/midi/MidiService$Client;
    .restart local p0  # "this":Lcom/android/server/midi/MidiService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    .restart local p3  # "callback":Landroid/media/midi/IMidiDeviceOpenCallback;
    :catchall_4f
    move-exception v2

    monitor-exit v1
    :try_end_51
    .catchall {:try_start_30 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public registerDeviceServer(Landroid/media/midi/IMidiDeviceServer;II[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;I)Landroid/media/midi/MidiDeviceInfo;
    .registers 24
    .param p1, "server"  # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "numInputPorts"  # I
    .param p3, "numOutputPorts"  # I
    .param p4, "inputPortNames"  # [Ljava/lang/String;
    .param p5, "outputPortNames"  # [Ljava/lang/String;
    .param p6, "properties"  # Landroid/os/Bundle;
    .param p7, "type"  # I

    .line 713
    move-object/from16 v12, p0

    move/from16 v13, p7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 714
    .local v14, "uid":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_19

    const/16 v0, 0x3e8

    if-ne v14, v0, :cond_10

    goto :goto_19

    .line 715
    :cond_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only system can create USB devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 716
    :cond_19
    :goto_19
    const/4 v0, 0x3

    if-ne v13, v0, :cond_2a

    iget v0, v12, Lcom/android/server/midi/MidiService;->mBluetoothServiceUid:I

    if-ne v14, v0, :cond_21

    goto :goto_2a

    .line 717
    :cond_21
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only MidiBluetoothService can create Bluetooth devices"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 720
    :cond_2a
    :goto_2a
    iget-object v15, v12, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v15

    .line 721
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p7

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p1

    move v11, v14

    :try_start_40
    invoke-direct/range {v1 .. v11}, Lcom/android/server/midi/MidiService;->addDeviceLocked(III[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/media/midi/IMidiDeviceServer;Landroid/content/pm/ServiceInfo;ZI)Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    monitor-exit v15

    return-object v0

    .line 723
    :catchall_46
    move-exception v0

    monitor-exit v15
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_46

    throw v0
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "listener"  # Landroid/media/midi/IMidiDeviceListener;

    .line 601
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 602
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 603
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->addListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 605
    invoke-static {v0}, Lcom/android/server/midi/MidiService$Client;->access$1300(Lcom/android/server/midi/MidiService$Client;)I

    move-result v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/midi/MidiService;->updateStickyDeviceStatus(ILandroid/media/midi/IMidiDeviceListener;)V

    .line 606
    return-void
.end method

.method public setDeviceStatus(Landroid/media/midi/IMidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .registers 7
    .param p1, "server"  # Landroid/media/midi/IMidiDeviceServer;
    .param p2, "status"  # Landroid/media/midi/MidiDeviceStatus;

    .line 762
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$Device;

    .line 763
    .local v0, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v0, :cond_47

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 768
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Device;->setDeviceStatus(Landroid/media/midi/MidiDeviceStatus;)V

    .line 769
    invoke-direct {p0, v0, p2}, Lcom/android/server/midi/MidiService;->notifyDeviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V

    goto :goto_47

    .line 765
    :cond_1f
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceStatus() caller UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " does not match device\'s UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$Device;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_47
    :goto_47
    return-void
.end method

.method public unregisterDeviceServer(Landroid/media/midi/IMidiDeviceServer;)V
    .registers 5
    .param p1, "server"  # Landroid/media/midi/IMidiDeviceServer;

    .line 728
    iget-object v0, p0, Lcom/android/server/midi/MidiService;->mDevicesByInfo:Ljava/util/HashMap;

    monitor-enter v0

    .line 729
    :try_start_3
    iget-object v1, p0, Lcom/android/server/midi/MidiService;->mDevicesByServer:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/media/midi/IMidiDeviceServer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/midi/MidiService$Device;

    .line 730
    .local v1, "device":Lcom/android/server/midi/MidiService$Device;
    if-eqz v1, :cond_14

    .line 731
    invoke-virtual {v1}, Lcom/android/server/midi/MidiService$Device;->closeLocked()V

    .line 733
    .end local v1  # "device":Lcom/android/server/midi/MidiService$Device;
    :cond_14
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public unregisterListener(Landroid/os/IBinder;Landroid/media/midi/IMidiDeviceListener;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "listener"  # Landroid/media/midi/IMidiDeviceListener;

    .line 610
    invoke-direct {p0, p1}, Lcom/android/server/midi/MidiService;->getClient(Landroid/os/IBinder;)Lcom/android/server/midi/MidiService$Client;

    move-result-object v0

    .line 611
    .local v0, "client":Lcom/android/server/midi/MidiService$Client;
    if-nez v0, :cond_7

    return-void

    .line 612
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/midi/MidiService$Client;->removeListener(Landroid/media/midi/IMidiDeviceListener;)V

    .line 613
    return-void
.end method
