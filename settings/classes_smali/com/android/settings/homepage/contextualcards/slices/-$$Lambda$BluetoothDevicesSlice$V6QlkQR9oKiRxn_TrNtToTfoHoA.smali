.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;-><init>()V

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$V6QlkQR9oKiRxn_TrNtToTfoHoA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->lambda$getConnectedBluetoothDevices$0(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Z

    move-result p0

    return p0
.end method
