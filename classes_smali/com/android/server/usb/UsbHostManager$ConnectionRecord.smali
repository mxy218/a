.class Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionRecord"
.end annotation


# static fields
.field static final CONNECT:I = 0x0

.field static final CONNECT_BADDEVICE:I = 0x2

.field static final CONNECT_BADPARSE:I = 0x1

.field static final DISCONNECT:I = -0x1

.field private static final kDumpBytesPerLine:I = 0x10


# instance fields
.field final mDescriptors:[B

.field mDeviceAddress:Ljava/lang/String;

.field final mMode:I

.field mTimestamp:J

.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V
    .registers 7

    .line 112
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    .line 114
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    .line 115
    iput p3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    .line 116
    iput-object p4, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    .line 117
    return-void
.end method

.method private formatTime()Ljava/lang/String;
    .registers 6

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 14

    .line 124
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 126
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    const-string v0, "device_address"

    const-wide v1, 0x10900000001L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 127
    iget p4, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const-string v0, "mode"

    const-wide v1, 0x10e00000002L

    invoke-virtual {p1, v0, v1, v2, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 128
    iget-wide v7, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    const-string/jumbo v4, "timestamp"

    const-wide v5, 0x10300000003L

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    .line 130
    iget p4, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v0, -0x1

    if-eq p4, v0, :cond_84

    .line 131
    new-instance p4, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {p4, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 133
    invoke-virtual {p4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v0

    .line 135
    const-wide v1, 0x10500000004L

    .line 136
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v3

    .line 135
    const-string v4, "manufacturer"

    invoke-virtual {p1, v4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 137
    const-wide v1, 0x10500000005L

    .line 138
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v0

    .line 137
    const-string/jumbo v3, "product"

    invoke-virtual {p1, v3, v1, v2, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 139
    const-wide v0, 0x10b00000006L

    const-string v2, "is_headset"

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 140
    const-wide v2, 0x10800000001L

    invoke-virtual {p4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v4

    const-string v5, "in"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 141
    const-wide v2, 0x10800000002L

    invoke-virtual {p4}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result p4

    const-string/jumbo v4, "out"

    invoke-virtual {p1, v4, v2, v3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 142
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 145
    :cond_84
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 146
    return-void
.end method

.method dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 7

    .line 182
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_88

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    new-instance v2, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    invoke-direct {v2, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    .line 187
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 188
    invoke-virtual {v4, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 189
    goto :goto_47

    .line 190
    :cond_57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHeadset[in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 194
    goto :goto_a5

    .line 195
    :cond_88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 197
    :goto_a5
    return-void
.end method

.method dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 15

    .line 202
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b8

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    array-length v0, v0

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raw Descriptors "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 206
    nop

    .line 207
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_4c
    div-int/lit8 v4, v0, 0x10

    const-string v5, " "

    const-string v6, "0x%02X"

    const-string v7, "0x"

    const/4 v8, 0x1

    if-ge v2, v4, :cond_8c

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    move v9, v3

    move v3, v1

    :goto_5e
    const/16 v10, 0x10

    if-ge v3, v10, :cond_81

    .line 210
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v10, v8, [Ljava/lang/Object;

    iget-object v11, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    add-int/lit8 v12, v9, 0x1

    aget-byte v9, v11, v9

    .line 211
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v10, v1

    invoke-static {v6, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    add-int/lit8 v3, v3, 0x1

    move v9, v12

    goto :goto_5e

    .line 214
    :cond_81
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 207
    add-int/lit8 v2, v2, 0x1

    move v3, v9

    goto :goto_4c

    .line 218
    :cond_8c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    :goto_91
    if-ge v3, v0, :cond_b0

    .line 220
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, v9, v3

    .line 221
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v10

    goto :goto_91

    .line 224
    :cond_b0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 225
    goto :goto_d5

    .line 226
    :cond_b8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 228
    :goto_d5
    return-void
.end method

.method dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 149
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8f

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 153
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object v1

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "manfacturer:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " product:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHeadset[in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , out: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    goto :goto_ac

    .line 160
    :cond_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 162
    :goto_ac
    return-void
.end method

.method dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 165
    iget v0, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7b

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Connect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    new-instance v2, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;

    invoke-direct {v2}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;-><init>()V

    .line 170
    invoke-virtual {v2, v0}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->parse(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 171
    new-instance v3, Lcom/android/server/usb/descriptors/report/TextReportCanvas;

    invoke-direct {v3, v0, v1}, Lcom/android/server/usb/descriptors/report/TextReportCanvas;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/StringBuilder;)V

    invoke-virtual {v2, v3}, Lcom/android/server/usb/descriptors/tree/UsbDescriptorsTree;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHeadset[in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isInputHeadset()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , out: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 176
    goto :goto_98

    .line 177
    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->formatTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Disconnect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 179
    :goto_98
    return-void
.end method
