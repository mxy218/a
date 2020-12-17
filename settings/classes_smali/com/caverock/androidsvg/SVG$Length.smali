.class public Lcom/caverock/androidsvg/SVG$Length;
.super Ljava/lang/Object;
.source "SVG.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Length"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I


# instance fields
.field unit:Lcom/caverock/androidsvg/SVG$Unit;

.field value:F


# direct methods
.method static synthetic $SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I
    .registers 3

    .line 1213
    sget-object v0, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Unit;->values()[Lcom/caverock/androidsvg/SVG$Unit;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->cm:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_15} :catch_15

    :catch_15
    :try_start_15
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->em:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1e} :catch_1e

    :catch_1e
    :try_start_1e
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->ex:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_27} :catch_27

    :catch_27
    :try_start_27
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->in:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_30} :catch_30

    :catch_30
    :try_start_30
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->mm:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pc:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_39 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4d} :catch_4d

    :catch_4d
    :try_start_4d
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->pt:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4d .. :try_end_56} :catch_56

    :catch_56
    :try_start_56
    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_5f} :catch_5f

    :catch_5f
    sput-object v0, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit:[I

    return-object v0
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 1224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1215
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1216
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1226
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1227
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method

.method public constructor <init>(FLcom/caverock/androidsvg/SVG$Unit;)V
    .registers 4

    .line 1218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1215
    iput v0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1216
    sget-object v0, Lcom/caverock/androidsvg/SVG$Unit;->px:Lcom/caverock/androidsvg/SVG$Unit;

    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    .line 1220
    iput p1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    .line 1221
    iput-object p2, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    return-void
.end method


# virtual methods
.method public floatValue()F
    .registers 1

    .line 1232
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0
.end method

.method public floatValue(F)F
    .registers 4

    .line 1312
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    packed-switch v0, :pswitch_data_3a

    .line 1330
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    .line 1325
    :pswitch_15  #0x8
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x40c00000  # 6.0f

    div-float/2addr p0, p1

    return p0

    .line 1323
    :pswitch_1c  #0x7
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000  # 72.0f

    div-float/2addr p0, p1

    return p0

    .line 1321
    :pswitch_23  #0x6
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    const p1, 0x41cb3333  # 25.4f

    div-float/2addr p0, p1

    return p0

    .line 1319
    :pswitch_2b  #0x5
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    const p1, 0x40228f5c  # 2.54f

    div-float/2addr p0, p1

    return p0

    .line 1317
    :pswitch_33  #0x4
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    return p0

    .line 1315
    :cond_37
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    :pswitch_data_3a
    .packed-switch 0x4
        :pswitch_33  #00000004
        :pswitch_2b  #00000005
        :pswitch_23  #00000006
        :pswitch_1c  #00000007
        :pswitch_15  #00000008
    .end packed-switch
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 7

    .line 1282
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_31

    .line 1284
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1286
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    .line 1287
    :cond_f
    iget v0, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    .line 1288
    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    cmpl-float v1, v0, p1

    const/high16 v2, 0x42c80000  # 100.0f

    if-nez v1, :cond_1e

    .line 1290
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, v0

    :goto_1c
    div-float/2addr p0, v2

    return p0

    :cond_1e
    mul-float/2addr v0, v0

    mul-float/2addr p1, p1

    add-float/2addr v0, p1

    float-to-double v0, v0

    .line 1291
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const-wide v3, 0x3ff6a09e667f3bccL  # 1.414213562373095

    div-double/2addr v0, v3

    double-to-float p1, v0

    .line 1292
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p1

    goto :goto_1c

    .line 1294
    :cond_31
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public floatValue(Lcom/caverock/androidsvg/SVGAndroidRenderer;F)F
    .registers 5

    .line 1301
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_d

    .line 1303
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    mul-float/2addr p0, p2

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr p0, p1

    return p0

    .line 1305
    :cond_d
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 4

    .line 1238
    invoke-static {}, Lcom/caverock/androidsvg/SVG$Length;->$SWITCH_TABLE$com$caverock$androidsvg$SVG$Unit()[I

    move-result-object v0

    iget-object v1, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6e

    .line 1262
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    .line 1257
    :pswitch_12  #0x9
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_1b

    .line 1259
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    .line 1260
    :cond_1b
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->width:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr p0, p1

    return p0

    .line 1255
    :pswitch_24  #0x8
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x40c00000  # 6.0f

    div-float/2addr p0, p1

    return p0

    .line 1253
    :pswitch_2f  #0x7
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr p0, p1

    const/high16 p1, 0x42900000  # 72.0f

    div-float/2addr p0, p1

    return p0

    .line 1251
    :pswitch_3a  #0x6
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr p0, p1

    const p1, 0x41cb3333  # 25.4f

    div-float/2addr p0, p1

    return p0

    .line 1249
    :pswitch_46  #0x5
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr p0, p1

    const p1, 0x40228f5c  # 2.54f

    div-float/2addr p0, p1

    return p0

    .line 1247
    :pswitch_52  #0x4
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getDPI()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 1245
    :pswitch_5a  #0x3
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontXHeight()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 1243
    :pswitch_62  #0x2
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentFontSize()F

    move-result p1

    mul-float/2addr p0, p1

    return p0

    .line 1241
    :pswitch_6a  #0x1
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    nop

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_6a  #00000001
        :pswitch_62  #00000002
        :pswitch_5a  #00000003
        :pswitch_52  #00000004
        :pswitch_46  #00000005
        :pswitch_3a  #00000006
        :pswitch_2f  #00000007
        :pswitch_24  #00000008
        :pswitch_12  #00000009
    .end packed-switch
.end method

.method public floatValueY(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F
    .registers 4

    .line 1269
    iget-object v0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    sget-object v1, Lcom/caverock/androidsvg/SVG$Unit;->percent:Lcom/caverock/androidsvg/SVG$Unit;

    if-ne v0, v1, :cond_18

    .line 1270
    invoke-virtual {p1}, Lcom/caverock/androidsvg/SVGAndroidRenderer;->getCurrentViewPortInUserUnits()Lcom/caverock/androidsvg/SVG$Box;

    move-result-object p1

    if-nez p1, :cond_f

    .line 1272
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    return p0

    .line 1273
    :cond_f
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    iget p1, p1, Lcom/caverock/androidsvg/SVG$Box;->height:F

    mul-float/2addr p0, p1

    const/high16 p1, 0x42c80000  # 100.0f

    div-float/2addr p0, p1

    return p0

    .line 1275
    :cond_18
    invoke-virtual {p0, p1}, Lcom/caverock/androidsvg/SVG$Length;->floatValueX(Lcom/caverock/androidsvg/SVGAndroidRenderer;)F

    move-result p0

    return p0
.end method

.method public isNegative()Z
    .registers 2

    .line 1341
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v0, 0x0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isZero()Z
    .registers 2

    .line 1336
    iget p0, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/caverock/androidsvg/SVG$Length;->value:F

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$Length;->unit:Lcom/caverock/androidsvg/SVG$Unit;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
