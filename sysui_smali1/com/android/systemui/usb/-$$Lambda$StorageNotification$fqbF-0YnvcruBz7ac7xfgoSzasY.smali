.class public final synthetic Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/usb/StorageNotification;

.field private final synthetic f$1:Landroid/os/storage/VolumeInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Landroid/os/storage/VolumeInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;->f$0:Lcom/android/systemui/usb/StorageNotification;

    iput-object p2, p0, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;->f$1:Landroid/os/storage/VolumeInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;->f$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object p0, p0, Lcom/android/systemui/usb/-$$Lambda$StorageNotification$fqbF-0YnvcruBz7ac7xfgoSzasY;->f$1:Landroid/os/storage/VolumeInfo;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/systemui/usb/StorageNotification;->lambda$showConfirmDialog$0$StorageNotification(Landroid/os/storage/VolumeInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method
