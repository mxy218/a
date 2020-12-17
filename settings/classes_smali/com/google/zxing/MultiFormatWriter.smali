.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 57
    sget-object p0, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_6e

    .line 92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No encoder available for format "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :pswitch_22  #0xb
    new-instance p0, Lcom/google/zxing/aztec/AztecWriter;

    invoke-direct {p0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V

    goto :goto_63

    .line 86
    :pswitch_28  #0xa
    new-instance p0, Lcom/google/zxing/datamatrix/DataMatrixWriter;

    invoke-direct {p0}, Lcom/google/zxing/datamatrix/DataMatrixWriter;-><init>()V

    goto :goto_63

    .line 83
    :pswitch_2e  #0x9
    new-instance p0, Lcom/google/zxing/oned/CodaBarWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V

    goto :goto_63

    .line 80
    :pswitch_34  #0x8
    new-instance p0, Lcom/google/zxing/pdf417/PDF417Writer;

    invoke-direct {p0}, Lcom/google/zxing/pdf417/PDF417Writer;-><init>()V

    goto :goto_63

    .line 77
    :pswitch_3a  #0x7
    new-instance p0, Lcom/google/zxing/oned/ITFWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/ITFWriter;-><init>()V

    goto :goto_63

    .line 74
    :pswitch_40  #0x6
    new-instance p0, Lcom/google/zxing/oned/Code128Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    goto :goto_63

    .line 71
    :pswitch_46  #0x5
    new-instance p0, Lcom/google/zxing/oned/Code39Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/Code39Writer;-><init>()V

    goto :goto_63

    .line 68
    :pswitch_4c  #0x4
    new-instance p0, Lcom/google/zxing/qrcode/QRCodeWriter;

    invoke-direct {p0}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    goto :goto_63

    .line 65
    :pswitch_52  #0x3
    new-instance p0, Lcom/google/zxing/oned/UPCAWriter;

    invoke-direct {p0}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    goto :goto_63

    .line 62
    :pswitch_58  #0x2
    new-instance p0, Lcom/google/zxing/oned/EAN13Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    goto :goto_63

    .line 59
    :pswitch_5e  #0x1
    new-instance p0, Lcom/google/zxing/oned/EAN8Writer;

    invoke-direct {p0}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V

    :goto_63
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 94
    invoke-interface/range {v0 .. v5}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p0

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_5e  #00000001
        :pswitch_58  #00000002
        :pswitch_52  #00000003
        :pswitch_4c  #00000004
        :pswitch_46  #00000005
        :pswitch_40  #00000006
        :pswitch_3a  #00000007
        :pswitch_34  #00000008
        :pswitch_2e  #00000009
        :pswitch_28  #0000000a
        :pswitch_22  #0000000b
    .end packed-switch
.end method
