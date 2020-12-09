.class public abstract Lcom/android/server/usb/descriptors/UsbACHeaderInterface;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbACHeaderInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UsbACHeaderInterface"


# instance fields
.field protected mADCRelease:I

.field protected mTotalLength:I


# direct methods
.method public constructor <init>(IBBII)V
    .registers 6

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 36
    iput p5, p0, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->mADCRelease:I

    .line 37
    return-void
.end method


# virtual methods
.method public getADCRelease()I
    .registers 2

    .line 40
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->mADCRelease:I

    return v0
.end method

.method public getTotalLength()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->mTotalLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .registers 4

    .line 49
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 51
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->getADCRelease()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getBCDString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACHeaderInterface;->getTotalLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    .line 55
    return-void
.end method