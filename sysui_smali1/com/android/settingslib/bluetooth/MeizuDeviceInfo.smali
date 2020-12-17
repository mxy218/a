.class public Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;
.super Ljava/lang/Object;
.source "MeizuDeviceInfo.java"


# static fields
.field private static mDarkBmpMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mName:Ljava/lang/String;

.field private mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mDarkBmpMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getDevicesXml()Lcom/android/settingslib/bluetooth/XmlReader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    .line 36
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mName:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getMeizuWhiteIconFilePath()Ljava/lang/String;
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mXmlReader:Lcom/android/settingslib/bluetooth/XmlReader;

    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MeizuDeviceInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/XmlReader;->getWhiteIconFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMeizuWhiteIconFilePath filePath:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeizuDeviceInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method
