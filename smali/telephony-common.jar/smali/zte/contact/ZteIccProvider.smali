.class public Lzte/contact/ZteIccProvider;
.super Landroid/content/ContentProvider;
.source "ZteIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/contact/ZteIccProvider$AdnComparator;
    }
.end annotation


# static fields
.field protected static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

.field private static final ADN:I = 0x1

.field private static final DBG:Z = true

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_SRECID:Ljava/lang/String; = "srecid"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "RIL_IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mAdnComparator:Lzte/contact/ZteIccProvider$AdnComparator;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "number2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "srecid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 66
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 80
    new-instance v0, Lzte/contact/ZteIccProvider$AdnComparator;

    invoke-direct {v0}, Lzte/contact/ZteIccProvider$AdnComparator;-><init>()V

    iput-object v0, p0, Lzte/contact/ZteIccProvider;->mAdnComparator:Lzte/contact/ZteIccProvider$AdnComparator;

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p1, "efType"    # I
    .param p2, "srecid"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "anr"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    .line 517
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",num2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 525
    const-string v14, ""

    .line 527
    .local v14, "newsrecid":Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 529
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 533
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v2, 0x0

    aget-object v9, p5, v2

    move/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 544
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 545
    return-object v14

    .line 540
    :catch_0
    move-exception v13

    .line 541
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 538
    .end local v13    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "efType"    # I
    .param p2, "srecid"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "emails"    # [Ljava/lang/String;
    .param p6, "anr"    # Ljava/lang/String;
    .param p7, "pin2"    # Ljava/lang/String;

    .prologue
    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 584
    const/4 v15, 0x0

    .line 585
    .local v15, "success":Z
    const-string v14, ""

    .line 587
    .local v14, "newsrecid":Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 589
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 591
    const/4 v2, 0x0

    aget-object v5, p5, v2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 601
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v15, 0x1

    .line 602
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 603
    return v15

    .line 598
    :catch_0
    move-exception v13

    .line 599
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    .end local v13    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 9
    .param p1, "efType"    # I

    .prologue
    .line 477
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromEf: efType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 479
    const/4 v1, 0x0

    .line 481
    .local v1, "adnRecords":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v7, "simphonebook"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 483
    .local v5, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 484
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 492
    .end local v5    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 494
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 496
    .local v0, "N":I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v7, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 497
    .local v2, "cursor":Landroid/database/MatrixCursor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adnRecords.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 499
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 500
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 501
    .local v6, "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 502
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromEf i ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 503
    :cond_1
    invoke-virtual {p0, v6, v2, v4}, Lzte/contact/ZteIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 499
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 488
    .end local v0    # "N":I
    .end local v2    # "cursor":Landroid/database/MatrixCursor;
    .end local v4    # "i":I
    .end local v6    # "record":Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 489
    .local v3, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 510
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_3
    const-string v7, "RIL_IccProvider"

    const-string v8, "Cannot load ADN records"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v7, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v2

    .line 486
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .param p1, "efType"    # I
    .param p2, "srecid"    # Ljava/lang/String;
    .param p3, "oldName"    # Ljava/lang/String;
    .param p4, "oldNumber"    # Ljava/lang/String;
    .param p5, "oldEmails"    # [Ljava/lang/String;
    .param p6, "oldAnr"    # Ljava/lang/String;
    .param p7, "newName"    # Ljava/lang/String;
    .param p8, "newNumber"    # Ljava/lang/String;
    .param p9, "emails"    # [Ljava/lang/String;
    .param p10, "anr"    # Ljava/lang/String;
    .param p11, "pin2"    # Ljava/lang/String;

    .prologue
    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  newEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p9, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 555
    const/4 v15, 0x0

    .line 556
    .local v15, "success":Z
    const-string v14, ""

    .line 559
    .local v14, "newsrecid":Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 561
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 563
    const/4 v2, 0x0

    aget-object v5, p5, v2

    const/4 v2, 0x0

    aget-object v9, p9, v2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p2

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 573
    .end local v1    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v15, 0x1

    .line 574
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 575
    return v15

    .line 570
    :catch_0
    move-exception v13

    .line 571
    .local v13, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 568
    .end local v13    # "ex":Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "where"    # Ljava/lang/String;
    .param p3, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v13

    .line 289
    .local v13, "mCallingPackage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "delete -- mCallingPackage "

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 291
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 292
    .local v15, "match":I
    packed-switch v15, :pswitch_data_0

    .line 302
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "Cannot insert into URL: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v13    # "mCallingPackage":Ljava/lang/String;
    .end local v15    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 294
    .restart local v13    # "mCallingPackage":Ljava/lang/String;
    .restart local v15    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 307
    .local v3, "efType":I
    :goto_0
    :try_start_1
    const-string v5, ""

    .line 308
    .local v5, "tag":Ljava/lang/String;
    const-string v6, ""

    .line 309
    .local v6, "number":Ljava/lang/String;
    const/4 v7, 0x0

    .line 311
    .local v7, "emails":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 312
    const/4 v2, 0x0

    const-string v24, ""

    aput-object v24, v7, v2

    .line 313
    const-string v8, ""

    .line 314
    .local v8, "anr":Ljava/lang/String;
    const-string v4, ""

    .line 316
    .local v4, "srecid":Ljava/lang/String;
    const/4 v9, 0x0

    .line 318
    .local v9, "pin2":Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 319
    .local v22, "tokens":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v16, v0

    .line 321
    .local v16, "n":I
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, -0x1

    if-ltz v16, :cond_13

    .line 322
    aget-object v18, v22, v16

    .line 323
    .local v18, "param":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "parsing \'"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v24, "\'"

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 325
    const/4 v14, 0x0

    .line 326
    .local v14, "mPair":I
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v17, v0

    .line 327
    .local v17, "pair":[Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .local v19, "param1":Ljava/lang/StringBuilder;
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v20, "param2":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 330
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v24, 0x3d

    move/from16 v0, v24

    if-ne v2, v0, :cond_2

    .line 331
    move v14, v11

    .line 335
    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_3

    .line 336
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 337
    .local v10, "c":C
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 298
    .end local v3    # "efType":I
    .end local v4    # "srecid":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "emails":[Ljava/lang/String;
    .end local v8    # "anr":Ljava/lang/String;
    .end local v9    # "pin2":Ljava/lang/String;
    .end local v10    # "c":C
    .end local v11    # "i":I
    .end local v14    # "mPair":I
    .end local v16    # "n":I
    .end local v17    # "pair":[Ljava/lang/String;
    .end local v18    # "param":Ljava/lang/String;
    .end local v19    # "param1":Ljava/lang/StringBuilder;
    .end local v20    # "param2":Ljava/lang/StringBuilder;
    .end local v22    # "tokens":[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 299
    .restart local v3    # "efType":I
    goto :goto_0

    .line 329
    .restart local v4    # "srecid":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "emails":[Ljava/lang/String;
    .restart local v8    # "anr":Ljava/lang/String;
    .restart local v9    # "pin2":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v14    # "mPair":I
    .restart local v16    # "n":I
    .restart local v17    # "pair":[Ljava/lang/String;
    .restart local v18    # "param":Ljava/lang/String;
    .restart local v19    # "param1":Ljava/lang/StringBuilder;
    .restart local v20    # "param2":Ljava/lang/StringBuilder;
    .restart local v22    # "tokens":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 339
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v2

    .line 340
    add-int/lit8 v11, v14, 0x1

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 341
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 342
    .restart local v10    # "c":C
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 340
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 344
    .end local v10    # "c":C
    :cond_4
    const/4 v2, 0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v2

    .line 346
    const/4 v2, 0x0

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 347
    .local v12, "key":Ljava/lang/String;
    const-string v23, ""

    .line 348
    .local v23, "val":Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v2, v0

    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v2, v0, :cond_5

    .line 349
    const/4 v2, 0x2

    if-ne v15, v2, :cond_6

    .line 350
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    .line 359
    :cond_5
    :goto_5
    const-string v2, "tag"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 360
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const/4 v2, 0x2

    if-ne v15, v2, :cond_8

    .line 362
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 352
    :cond_6
    const/4 v2, 0x1

    if-ne v15, v2, :cond_7

    .line 353
    const/4 v2, 0x1

    aget-object v23, v17, v2

    goto :goto_5

    .line 356
    :cond_7
    const/4 v2, 0x1

    aget-object v2, v17, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    goto :goto_5

    .line 364
    :cond_8
    move-object/from16 v5, v23

    goto/16 :goto_1

    .line 365
    :cond_9
    const-string v2, "number"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 366
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const/4 v2, 0x2

    if-ne v15, v2, :cond_a

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 370
    :cond_a
    move-object/from16 v6, v23

    goto/16 :goto_1

    .line 371
    :cond_b
    const-string v2, "emails"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 373
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 374
    const/4 v2, 0x2

    if-ne v15, v2, :cond_c

    .line 375
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v7, v2

    goto/16 :goto_1

    .line 377
    :cond_c
    const/4 v2, 0x0

    aput-object v23, v7, v2

    goto/16 :goto_1

    .line 378
    :cond_d
    const-string v2, "number2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 379
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 380
    const/4 v2, 0x2

    if-ne v15, v2, :cond_e

    .line 381
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 383
    :cond_e
    move-object/from16 v8, v23

    goto/16 :goto_1

    .line 384
    :cond_f
    const-string v2, "srecid"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 385
    const-string v2, ""

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 386
    const/4 v2, 0x2

    if-ne v15, v2, :cond_10

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 389
    :cond_10
    move-object/from16 v4, v23

    goto/16 :goto_1

    .line 390
    :cond_11
    const-string v2, "pin2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    const/4 v2, 0x2

    if-ne v15, v2, :cond_12

    .line 392
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 394
    :cond_12
    move-object/from16 v9, v23

    goto/16 :goto_1

    .line 404
    .end local v11    # "i":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v14    # "mPair":I
    .end local v17    # "pair":[Ljava/lang/String;
    .end local v18    # "param":Ljava/lang/String;
    .end local v19    # "param1":Ljava/lang/StringBuilder;
    .end local v20    # "param2":Ljava/lang/StringBuilder;
    .end local v23    # "val":Ljava/lang/String;
    :cond_13
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_14

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_14

    .line 405
    const/4 v2, 0x0

    .line 415
    :goto_6
    monitor-exit p0

    return v2

    :cond_14
    move-object/from16 v2, p0

    .line 409
    :try_start_2
    invoke-direct/range {v2 .. v9}, Lzte/contact/ZteIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v21

    .line 410
    .local v21, "success":Z
    if-nez v21, :cond_15

    .line 411
    const/4 v2, 0x0

    goto :goto_6

    .line 414
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 415
    const/4 v2, 0x1

    goto :goto_6

    .line 292
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 111
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "initialValues"    # Landroid/content/ContentValues;

    .prologue
    .line 126
    monitor-enter p0

    const/4 v9, 0x0

    .line 128
    .local v9, "pin2":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v17

    .line 129
    .local v17, "mCallingPackage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "insert -- mCallingPackage "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 131
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v18

    .line 132
    .local v18, "match":I
    packed-switch v18, :pswitch_data_0

    .line 146
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot insert into URL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v17    # "mCallingPackage":Ljava/lang/String;
    .end local v18    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 135
    .restart local v17    # "mCallingPackage":Ljava/lang/String;
    .restart local v18    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 136
    .local v3, "efType":I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 150
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "number":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 154
    .local v13, "email":Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "anr":Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, "srecid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 157
    .local v7, "emails":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 158
    const/4 v2, 0x0

    aput-object v13, v7, v2

    move-object/from16 v2, p0

    .line 161
    invoke-direct/range {v2 .. v9}, Lzte/contact/ZteIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 162
    .local v19, "newrsrecid":Ljava/lang/String;
    if-nez v19, :cond_0

    const-string v19, ""

    .line 163
    :cond_0
    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 166
    :try_start_2
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v16

    .line 168
    .local v16, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v16, :cond_6

    .line 172
    const/16 v11, 0x6f3a

    .line 173
    .local v11, "PBefid":I
    const/4 v10, 0x0

    .line 174
    .local v10, "Bfull":Z
    const/4 v2, 0x3

    new-array v15, v2, [I

    .line 175
    .local v15, "ext1recordSize":[I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 176
    .local v20, "recordSize":[I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_5

    .line 179
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    const/16 v11, 0x4f30

    .line 181
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAdnRecordsSize(I)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v23

    move/from16 v0, v23

    if-lt v2, v0, :cond_2

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 190
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Bfull == "

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 191
    if-eqz v10, :cond_5

    .line 192
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .local v12, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    .local v21, "resultUri":Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 267
    .end local v10    # "Bfull":Z
    .end local v11    # "PBefid":I
    .end local v15    # "ext1recordSize":[I
    .end local v16    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v20    # "recordSize":[I
    .end local v21    # "resultUri":Landroid/net/Uri;
    .local v22, "resultUri":Landroid/net/Uri;
    :goto_2
    monitor-exit p0

    return-object v22

    .line 141
    .end local v3    # "efType":I
    .end local v4    # "srecid":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "emails":[Ljava/lang/String;
    .end local v8    # "anr":Ljava/lang/String;
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    .end local v13    # "email":Ljava/lang/String;
    .end local v19    # "newrsrecid":Ljava/lang/String;
    .end local v22    # "resultUri":Landroid/net/Uri;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 142
    .restart local v3    # "efType":I
    :try_start_3
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 143
    goto/16 :goto_0

    .line 181
    .restart local v4    # "srecid":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "emails":[Ljava/lang/String;
    .restart local v8    # "anr":Ljava/lang/String;
    .restart local v10    # "Bfull":Z
    .restart local v11    # "PBefid":I
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v15    # "ext1recordSize":[I
    .restart local v16    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v19    # "newrsrecid":Ljava/lang/String;
    .restart local v20    # "recordSize":[I
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 184
    :cond_3
    const/16 v11, 0x6f3a

    .line 185
    :try_start_4
    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v20

    .line 186
    if-eqz v20, :cond_1

    .line 187
    const/16 v2, 0x6f3a

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v23, 0x2

    aget v23, v20, v23

    move/from16 v0, v23

    if-lt v2, v0, :cond_4

    const/4 v2, 0x2

    aget v2, v20, v2

    if-eqz v2, :cond_4

    const/4 v10, 0x1

    :goto_3
    goto :goto_1

    :cond_4
    const/4 v10, 0x0

    goto :goto_3

    .line 211
    :cond_5
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_6

    .line 212
    const/16 v2, 0x6f3b

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v20

    .line 213
    if-eqz v20, :cond_6

    .line 214
    const/16 v2, 0x6f3b

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v23, 0x2

    aget v23, v20, v23

    move/from16 v0, v23

    if-lt v2, v0, :cond_6

    .line 215
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 216
    .restart local v12    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    .restart local v21    # "resultUri":Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 217
    .end local v21    # "resultUri":Landroid/net/Uri;
    .restart local v22    # "resultUri":Landroid/net/Uri;
    goto :goto_2

    .line 236
    .end local v10    # "Bfull":Z
    .end local v11    # "PBefid":I
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    .end local v15    # "ext1recordSize":[I
    .end local v16    # "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v20    # "recordSize":[I
    .end local v22    # "resultUri":Landroid/net/Uri;
    :catch_0
    move-exception v14

    .line 237
    .local v14, "ex":Ljava/lang/SecurityException;
    :try_start_5
    invoke-virtual {v14}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 239
    .end local v14    # "ex":Ljava/lang/SecurityException;
    :cond_6
    :goto_4
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    .restart local v12    # "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .restart local v21    # "resultUri":Landroid/net/Uri;
    move-object/from16 v22, v21

    .line 241
    .end local v21    # "resultUri":Landroid/net/Uri;
    .restart local v22    # "resultUri":Landroid/net/Uri;
    goto :goto_2

    .line 244
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    .end local v22    # "resultUri":Landroid/net/Uri;
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v12    # "buf":Ljava/lang/StringBuilder;
    packed-switch v18, :pswitch_data_1

    .line 256
    :goto_5
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 260
    .restart local v21    # "resultUri":Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v22, v21

    .line 267
    .end local v21    # "resultUri":Landroid/net/Uri;
    .restart local v22    # "resultUri":Landroid/net/Uri;
    goto/16 :goto_2

    .line 247
    .end local v22    # "resultUri":Landroid/net/Uri;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "adn/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "/"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 251
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 234
    .end local v12    # "buf":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    goto :goto_4

    .line 132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 245
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 13
    .param p1, "record"    # Lcom/android/internal/telephony/uicc/AdnRecord;
    .param p2, "cursor"    # Landroid/database/MatrixCursor;
    .param p3, "id"    # I

    .prologue
    .line 613
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 614
    const/4 v11, 0x6

    new-array v3, v11, [Ljava/lang/Object;

    .line 615
    .local v3, "contact":[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 616
    .local v0, "alphaTag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 618
    .local v9, "number":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "anr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v10

    .line 620
    .local v10, "srecid":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: srecid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 622
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 623
    const/4 v11, 0x0

    aput-object v0, v3, v11

    .line 624
    const/4 v11, 0x1

    aput-object v9, v3, v11

    .line 626
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 627
    .local v6, "emails":[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v5, "emailString":Ljava/lang/StringBuilder;
    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 630
    .local v4, "email":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 631
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 634
    .end local v4    # "email":Ljava/lang/String;
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 640
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "emailString":Ljava/lang/StringBuilder;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    :goto_1
    const/4 v11, 0x3

    aput-object v1, v3, v11

    .line 641
    const/4 v11, 0x4

    aput-object v10, v3, v11

    .line 642
    const/4 v11, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 644
    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 646
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v1    # "anr":Ljava/lang/String;
    .end local v3    # "contact":[Ljava/lang/Object;
    .end local v6    # "emails":[Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "srecid":Ljava/lang/String;
    :cond_1
    return-void

    .line 637
    .restart local v0    # "alphaTag":Ljava/lang/String;
    .restart local v1    # "anr":Ljava/lang/String;
    .restart local v3    # "contact":[Ljava/lang/Object;
    .restart local v6    # "emails":[Ljava/lang/String;
    .restart local v9    # "number":Ljava/lang/String;
    .restart local v10    # "srecid":Ljava/lang/String;
    :cond_2
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v3, v11

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 649
    const-string v0, "RIL_IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method protected normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inVal"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x27

    .line 271
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 272
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 281
    .end local p1    # "inVal":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 275
    .restart local p1    # "inVal":Ljava/lang/String;
    :cond_0
    move-object v1, p1

    .line 277
    .local v1, "retVal":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 278
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 281
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sort"    # Ljava/lang/String;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lzte/contact/ZteIccProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "mCallingPackage":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query -- mCallingPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 94
    sget-object v1, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 105
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .end local v0    # "mCallingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 96
    .restart local v0    # "mCallingPackage":Ljava/lang/String;
    :pswitch_0
    const/16 v1, 0x6f3a

    :try_start_1
    invoke-direct {p0, v1}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 102
    :goto_0
    monitor-exit p0

    return-object v1

    .line 99
    :pswitch_1
    const/16 v1, 0x6f3b

    :try_start_2
    invoke-direct {p0, v1}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v1

    goto :goto_0

    .line 102
    :pswitch_2
    const/16 v1, 0x6f49

    invoke-direct {p0, v1}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21
    .param p1, "url"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "where"    # Ljava/lang/String;
    .param p4, "whereArgs"    # [Ljava/lang/String;

    .prologue
    .line 421
    monitor-enter p0

    const/4 v13, 0x0

    .line 424
    .local v13, "pin2":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v15

    .line 425
    .local v15, "mCallingPackage":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "update -- mCallingPackage "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 427
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v16

    .line 428
    .local v16, "match":I
    packed-switch v16, :pswitch_data_0

    .line 442
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Cannot insert into URL: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .end local v15    # "mCallingPackage":Ljava/lang/String;
    .end local v16    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 431
    .restart local v15    # "mCallingPackage":Ljava/lang/String;
    .restart local v16    # "match":I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 432
    .local v3, "efType":I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 446
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "tag":Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, "number":Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 449
    .local v9, "newTag":Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 451
    .local v10, "newNumber":Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 452
    .local v14, "email":Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 453
    .local v8, "anr":Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 454
    .local v17, "newEmail":Ljava/lang/String;
    const-string v2, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 455
    .local v12, "newAnr":Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 456
    .local v4, "srecid":Ljava/lang/String;
    const/4 v7, 0x0

    .line 457
    .local v7, "oldEmails":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 458
    const/4 v2, 0x0

    aput-object v14, v7, v2

    .line 459
    const/4 v11, 0x0

    .line 460
    .local v11, "newEmails":[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 461
    const/4 v2, 0x0

    aput-object v17, v11, v2

    move-object/from16 v2, p0

    .line 464
    invoke-direct/range {v2 .. v13}, Lzte/contact/ZteIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v18

    .line 468
    .local v18, "success":Z
    if-nez v18, :cond_0

    .line 469
    const/4 v2, 0x0

    .line 473
    :goto_1
    monitor-exit p0

    return v2

    .line 437
    .end local v3    # "efType":I
    .end local v4    # "srecid":Ljava/lang/String;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "number":Ljava/lang/String;
    .end local v7    # "oldEmails":[Ljava/lang/String;
    .end local v8    # "anr":Ljava/lang/String;
    .end local v9    # "newTag":Ljava/lang/String;
    .end local v10    # "newNumber":Ljava/lang/String;
    .end local v11    # "newEmails":[Ljava/lang/String;
    .end local v12    # "newAnr":Ljava/lang/String;
    .end local v14    # "email":Ljava/lang/String;
    .end local v17    # "newEmail":Ljava/lang/String;
    .end local v18    # "success":Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 438
    .restart local v3    # "efType":I
    :try_start_2
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 439
    goto :goto_0

    .line 472
    .restart local v4    # "srecid":Ljava/lang/String;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "number":Ljava/lang/String;
    .restart local v7    # "oldEmails":[Ljava/lang/String;
    .restart local v8    # "anr":Ljava/lang/String;
    .restart local v9    # "newTag":Ljava/lang/String;
    .restart local v10    # "newNumber":Ljava/lang/String;
    .restart local v11    # "newEmails":[Ljava/lang/String;
    .restart local v12    # "newAnr":Ljava/lang/String;
    .restart local v14    # "email":Ljava/lang/String;
    .restart local v17    # "newEmail":Ljava/lang/String;
    .restart local v18    # "success":Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    const/4 v2, 0x1

    goto :goto_1

    .line 428
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
